import 'package:freezed_annotation/freezed_annotation.dart';

part 'sing_in_form_event.freezed.dart';

@freezed
abstract class SingInFormEvent with _$SingInFormEvent{
const factory SingInFormEvent.emailChanged(String emailStr) = EmailChanged;
const factory SingInFormEvent.passwordChanged(String emailStr) = PaswordChanged;
const factory SingInFormEvent.registerWithEmailAndPasswordPressed(String emailStr) = RegisterWithEmailAndPasswordPressed;
const factory SingInFormEvent.signInWithEmailAndPasswordPressed(String emailStr) = SignInWithEmailAndPasswordPressed;
const factory SingInFormEvent.signInWithGooglePressed(String emailStr) = SignInWithGooglePressed;
}
