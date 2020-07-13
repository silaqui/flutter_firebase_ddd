import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_state.dart';
import 'package:flutterfirebaseddd/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.notesOverviewPage),
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
        );
      },
      child: const Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
