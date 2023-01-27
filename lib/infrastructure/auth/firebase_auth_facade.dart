import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as frAuth;

import 'package:desicion_maker_app/domain/auth/auth_failure.dart';
import 'package:desicion_maker_app/domain/auth/i_auth_facade.dart';
import 'package:desicion_maker_app/domain/auth/user.dart';
import 'package:desicion_maker_app/infrastructure/auth/firebase_user_mapper.dart';



@prod
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final frAuth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  );

  Preferences prefs = Preferences();

  @override
  Future<Option<User>> getSignedInUser() async {

    final frAuth.User _currentUser =  _firebaseAuth.currentUser!;
    
    

    return optionOf(_firebaseUserMapper.toDomain(_currentUser));

  }




  @override
  Future<Either<AuthFailure, Unit>> signInAnonymous() async {
    
    try {
      print("Signed in with temporary account.");

      await _firebaseAuth.signInAnonymously();

      prefs.getCurrentUsername ='Guest';
      prefs.getCurrentUserID = _firebaseAuth.currentUser!.uid;
    
      
      return right(unit);
      
    } on PlatformException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          return left(const AuthFailure.cancelledByUser());
        default: return left(const AuthFailure.serverError());
          
      }
    }    

    


  }


  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {

      // if(kIsWeb){

        

      //   final googleProvider = frAuth.GoogleAuthProvider();
        
      //   final userCredential = await _firebaseAuth.signInWithPopup(
      //     googleProvider,
      //   );

      //   final credential = userCredential.credential!;


      //   if(_firebaseAuth.currentUser != null && prefs.isAnon) {
      //     //? this for current users with Anonymous account to not lost all list and info

      //     print("Auth credential in web");

      //     final currentUser = _firebaseAuth.currentUser;
        
      //     await currentUser?.linkWithCredential(credential);

      //     prefs.getCurrentUsername = currentUser?.displayName ?? '';
      //     prefs.getCurrentUserID = currentUser!.uid;
    

      //     return right(unit); 

      //   }



      //   await _firebaseAuth.signInWithCredential(credential);

      //   print("INFRANSTRUCTURE LAYER: Sign in with credential in WEB ...");      

      //   return right(unit);

      // }

      print("INFRANSTRUCTURE LAYER: Signed in google ...");

      final googleUser = await _googleSignIn.signIn(); 

      print("INFRANSTRUCTURE LAYER: Signed in google completed");

      if (googleUser == null) {
        print("INFRANSTRUCTURE LAYER: ERROR CANCEL BY USER");
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      print("INFRANSTRUCTURE LAYER: Getting auth ...");

      

      final authCredential = frAuth.GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      
      // if(kIsWeb){

      //   // final authProviderWeb = frAuth.GoogleAuthProvider();


      //   final userCredential = await _firebaseAuth.signInWithPopup(authCredential);
        


      //   await _firebaseAuth.signInWithCredential(userCredential.credential!);

      //   print("INFRANSTRUCTURE LAYER: Sign in with credential in WEB ...");      

      //   return right(unit);

      // }

      print("INFRANSTRUCTURE LAYER: New Auth credential");

      if(_firebaseAuth.currentUser != null && prefs.isAnon)  {
        //? this for current users with Anonymous account to not lost all list and info

        print("Auth credential");

        final currentUser = _firebaseAuth.currentUser;
        
        await currentUser?.linkWithCredential(authCredential);

        prefs.getCurrentUsername = currentUser?.displayName ?? '';
        prefs.getCurrentUserID = currentUser!.uid;
    

        return right(unit); 

      }


      await _firebaseAuth.signInWithCredential(authCredential);

      print("INFRANSTRUCTURE LAYER: Sign in with credential ...");      

      return right(unit);    

    } on PlatformException catch (_) {
      print("INFRANSTRUCTURE LAYER: ${_.message}"); 
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Future<List<void>>> signOut() async {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
  
  
}