import 'package:flutter/material.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/confirmation/confirmation_screen.dart';
import 'package:think_spark/think_spark/screens/forgot_password/forgot_password_screen.dart';
import 'package:think_spark/think_spark/screens/login/login_screen.dart';
import 'package:think_spark/think_spark/screens/splash/splash_screen.dart';
import 'package:think_spark/think_spark/screens/on_boarding/on_boarding_screen.dart';
import 'package:think_spark/think_spark/screens/reset_password/reset_password_screen.dart';
import 'package:think_spark/think_spark/screens/sign_options/sign_options_screen.dart';
import 'package:think_spark/think_spark/screens/sign_up/sign_up_screen.dart';
import 'package:think_spark/think_spark/screens/splash/splash_screen.dart';
import 'package:think_spark/think_spark/screens/splash_confirm/splash_confirm_screen.dart';
import 'package:think_spark/think_spark/screens/verify_code/verify_code_screen.dart';

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

         case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
        );

      case Routes.verifyCodeScreen:
        return MaterialPageRoute(
          builder: (_) => VerifyCodeScreen(),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ResetPasswordScreen(),
        );

      case Routes.confirmationScreen:
        return MaterialPageRoute(
          builder: (_) => ConfirmationScreen(),
        );

        case Routes.splashConfirmScreen:
        return MaterialPageRoute(
          builder: (_) => SplashConfirmScreen(),
        );
      default:
        return null;
    }
  }
}
