import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:flutterfirebaseddd/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

import 'bloc.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event,) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(() => const AuthState.unauthenticated(), (a) => const AuthState.authenticated());
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
