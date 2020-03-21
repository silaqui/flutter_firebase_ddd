// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sing_in_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SingInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessage;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailOrSuccessOption;

  SingInFormState copyWith(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSuccessOption});
}

class _$SingInFormStateTearOff {
  const _$SingInFormStateTearOff();

  _SingInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessage,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailOrSuccessOption}) {
    return _SingInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessage: showErrorMessage,
      isSubmitting: isSubmitting,
      authFailOrSuccessOption: authFailOrSuccessOption,
    );
  }
}

const $SingInFormState = _$SingInFormStateTearOff();

class _$_SingInFormState implements _SingInFormState {
  const _$_SingInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessage,
      @required this.isSubmitting,
      @required this.authFailOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessage != null),
        assert(isSubmitting != null),
        assert(authFailOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessage;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailOrSuccessOption;

  @override
  String toString() {
    return 'SingInFormState(emailAddress: $emailAddress, password: $password, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailOrSuccessOption: $authFailOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(
                    other.authFailOrSuccessOption, authFailOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailOrSuccessOption, authFailOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailOrSuccessOption);

  @override
  _$_SingInFormState copyWith({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessage = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSuccessOption = freezed,
  }) {
    return _$_SingInFormState(
      emailAddress: emailAddress == freezed
          ? this.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? this.password : password as Password,
      showErrorMessage: showErrorMessage == freezed
          ? this.showErrorMessage
          : showErrorMessage as bool,
      isSubmitting:
          isSubmitting == freezed ? this.isSubmitting : isSubmitting as bool,
      authFailOrSuccessOption: authFailOrSuccessOption == freezed
          ? this.authFailOrSuccessOption
          : authFailOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    );
  }
}

abstract class _SingInFormState implements SingInFormState {
  const factory _SingInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMessage,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailOrSuccessOption}) =
      _$_SingInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessage;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailOrSuccessOption;

  @override
  _SingInFormState copyWith(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessage,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSuccessOption});
}
