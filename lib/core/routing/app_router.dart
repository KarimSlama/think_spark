import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark/screens/all_ideas/all_ideas_screen.dart';
import 'package:think_spark/think_spark/screens/all_ideas/controller/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/controller/cubit/navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/navigation_menu/navigation_menu.dart';
import 'package:think_spark/think_spark/screens/category_preferences/category_preferences_screen.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_cubit.dart';
import 'package:think_spark/think_spark/screens/confirmation/confirmation_screen.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';
import 'package:think_spark/think_spark/screens/forgot_password/forgot_password_screen.dart';
import 'package:think_spark/think_spark/screens/login/controller/cubit/login_cubit.dart';
import 'package:think_spark/think_spark/screens/login/login_screen.dart';
import 'package:think_spark/think_spark/screens/reset_password/controller/reset_password_cubit.dart';
import 'package:think_spark/think_spark/screens/splash/splash_screen.dart';
import 'package:think_spark/think_spark/screens/on_boarding/on_boarding_screen.dart';
import 'package:think_spark/think_spark/screens/reset_password/reset_password_screen.dart';
import 'package:think_spark/think_spark/screens/sign_options/sign_options_screen.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';
import 'package:think_spark/think_spark/screens/sign_up/sign_up_screen.dart';
import 'package:think_spark/think_spark/screens/splash_confirm/splash_confirm_screen.dart';
import 'package:think_spark/think_spark/screens/verify_code/controller/code_cubit.dart';
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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: SignUpScreen(),
          ),
        );

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ForgotPasswordCubit>(),
            child: ForgotPasswordScreen(),
          ),
        );

      case Routes.verifyCodeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CodeCubit>(),
            child: VerifyCodeScreen(),
          ),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: ResetPasswordScreen(),
          ),
        );

      case Routes.confirmationScreen:
        return MaterialPageRoute(
          builder: (_) => ConfirmationScreen(),
        );

      case Routes.splashConfirmScreen:
        return MaterialPageRoute(
          builder: (_) => SplashConfirmScreen(),
        );

      case Routes.categoryPreferencesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (_) => getIt<PreferencesCubit>()
                ..getCategories()
                ..getFilters()
                ..getLocations(),
              child: CategoryPreferencesScreen()),
        );

      case Routes.navigationMenu:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<NavigationCubit>(),
            child: NavigationMenu(),
          ),
        );

      case Routes.allIdeasScreen:
        final ideas = settings.arguments as List<IdeaResponse>;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<IdeasCubit>(),
            child: AllIdeasScreen(ideas: ideas),
          ),
        );

      default:
        return null;
    }
  }
}
