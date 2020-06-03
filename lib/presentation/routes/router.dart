import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterfirebaseddd/presentation/sign_in/sing_in_page.dart';
import 'package:flutterfirebaseddd/presentation/spash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
}