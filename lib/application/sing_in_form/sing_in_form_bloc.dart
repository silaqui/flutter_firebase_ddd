import 'dart:core';

import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterfirebaseddd/domain/auth/auht_failure.dart';
import 'package:flutterfirebaseddd/domain/auth/i_auth_facade.dart';
import 'package:flutterfirebaseddd/domain/auth/value_objects.dart';

import './bloc.dart';

class SingInFormBloc extends Bloc<SingInFormEvent, SingInFormState> {
  final IAuthFacade _authFacade;

  SingInFormBloc(this._authFacade);

  @override
  SingInFormState get initialState => SingInFormState.initial();

  @override
  Stream<SingInFormState> mapEventToState(
    SingInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailOrSuccessOption: none());
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.passwordStr), authFailOrSuccessOption: none());
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        _preformActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        _preformActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.signInWithEmailAndPassword);
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, authFailOrSuccessOption: none());
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            authFailOrSuccessOption: some(failureOrSuccess));
      },
    );
  }

  Stream<SingInFormState> _preformActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    var isEmailValid = state.emailAddress.isValid();
    var isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(isSubmitting: true, authFailOrSuccessOption: none());
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailOrSuccessOption: optionOf(failureOrSuccess));
  }
}
