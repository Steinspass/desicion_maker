part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @required bool? showErrorMessages,
    @required bool? isSubmitting,
    @required Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
  );
}
