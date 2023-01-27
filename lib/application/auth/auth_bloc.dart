import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/auth/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:desicion_maker_app/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import '../../presentation/pages/settings/misc/is_premium_misc.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Preferences prefs = Preferences();
  
  final IAuthFacade _authFacade;
  

  AuthBloc(this._authFacade) : super(AuthState.initial()){
    on<AuthCheckRequested>(_authCheckRequested);
    on<SignedOut>(_signOut);
  }


  Future<void> _authCheckRequested(AuthEvent event, Emitter<AuthState> emit) async {

    

    print('--- CURRENT USER ID is ${prefs.getCurrentUserID} ---');

    if(!prefs.isFirstTimeOpen){
      prefs.isFirstTimeOpen = true;
      final unauthenticated = _stateUnauthenticated();
      emit(unauthenticated);
    }else if(prefs.getCurrentUserID == ''){
        
        final unauthenticated = _stateUnauthenticated();
        emit(unauthenticated);

    }else {

      final Option<User?> userOption = await _authFacade.getSignedInUser();

        userOption.fold(
          () {
            final unauthenticated = _stateUnauthenticated();
            emit(unauthenticated);
          },
          (user) async {
            if(user == null){
              final unauthenticated = _stateUnauthenticated();
              emit(unauthenticated);
            }
            prefs.getCurrentUserID = user!.id!.getOrCrash();
            prefs.getCurrentUsername = user.name!.getOrCrash();
            

            final authenticated = _stateAuthenticated(user);
            emit(authenticated);

          
            
          }
        );

    }

    

    

  }

  
  


  void _signOut(AuthEvent event, Emitter<AuthState> emit) async {

    await _authFacade.signOut();
    
    emit(_stateUnauthenticated()); 

  }

  AuthState _stateUnauthenticated(){
    return AuthState.unauthenticated();
  }

  AuthState _stateAuthenticated(User user){
    return AuthState.authenticated(user);
  }


  // Stream<AuthState> mapEventToState (AuthEvent event) async* {
    
  //   yield* event.map(
  //     authCheckRequested: (e) async* {
  //       final userOption = await _authFacade.getSignedInUser();
  //       yield userOption.fold(
  //         () => const AuthState.unauthenticated(),
  //         (user) => AuthState.authenticated(user!),
  //       );
  //     }, 
  //     signedOut: (e) async* {
  //       await _authFacade.signOut();
  //       yield const AuthState.unauthenticated();
  //     }
  //   );

  // }
  
}
