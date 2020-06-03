import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/bloc.dart';
import 'package:flutterfirebaseddd/presentation/routes/router.gr.dart';

import '../../injection.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'Notes',
        builder: ExtendedNavigator(router: Router()),
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.purple[800],
            accentColor: Colors.yellow,
            inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)))),
      ),
    );
  }
}
