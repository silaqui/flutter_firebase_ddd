import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/auth/auht_failure.dart';
import 'package:flutterfirebaseddd/domain/auth/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sing_in_form_state.freezed.dart';

@freezed
abstract class SingInFormState with _$SingInFormState {
  const factory SingInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessage,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailOrSuccessOption,
  }) = _SingInFormState;

  factory SingInFormState.initial() =>
      SingInFormState(
          emailAddress: EmailAddress(''),
          password: Password(''),
          showErrorMessage: false,
          isSubmitting: false,
          authFailOrSuccessOption: none()
      );
}
