import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/auth/auth_failure.dart';
import 'package:desicion_maker_app/domain/auth/user.dart';



abstract class IAuthFacade{
  Future<Option<User?>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInAnonymous();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();

}