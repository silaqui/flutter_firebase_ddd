import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/auth/auht_failure.dart';
import 'package:flutterfirebaseddd/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_state.freezed.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessage,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() =>
      SignInFormState(
          emailAddress: EmailAddress(''),
          password: Password(''),
          showErrorMessage: false,
          isSubmitting: false,
          authFailOrSuccessOption: none()
      );
}
