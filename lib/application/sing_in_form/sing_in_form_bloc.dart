import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterfirebaseddd/domain/auth/i_auth_facade.dart';

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
    // TODO: Add Logic
  }
}
