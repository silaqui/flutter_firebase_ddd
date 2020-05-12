import 'package:flutter/material.dart';
import 'package:flutterfirebaseddd/presentation/sign_in/sing_in_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.purple[800],
          accentColor: Colors.yellow,
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
      home: SignInPage(),
    );
  }
}
