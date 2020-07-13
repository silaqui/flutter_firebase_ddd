import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebaseddd/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:flutterfirebaseddd/presentation/sign_in/sing_in_page.dart';
import 'package:flutterfirebaseddd/presentation/spash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true,
    routes: < AutoRoute > [
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: NotesOverviewPage)
    ])
class $Router {}