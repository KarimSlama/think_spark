import 'package:flutter/material.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/forgot_password/forgot_password_screen.dart';
import 'package:think_spark/think_spark/screens/login/login_screen.dart';
import 'package:think_spark/think_spark/screens/splash/splash_screen.dart';
import 'package:think_spark/think_spark/screens/on_boarding/on_boarding_screen.dart';
import 'package:think_spark/think_spark/screens/sign_options/sign_options_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.signOptionScreen:
        return MaterialPageRoute(
          builder: (_) => SignOptionsScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
        
        case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
        );
      default:
        return null;
    }
  }
}
