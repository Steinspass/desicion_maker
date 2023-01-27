import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/auth/auth_failure.dart';
import 'package:desicion_maker_app/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';


@injectable
class LoginCubit extends Cubit<LoginState> {

  final IAuthFacade _authFacade;

  LoginCubit(this._authFacade) : super(LoginState.initial());


  void signInWithGooglePressed() async {

    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInWithGoogle();

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess)
    ));

  }

  void signInAnonymousPressed() async {

    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInAnonymous();

    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess)
    ));

  }
}
