import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark/creative/edit_clue/edit_clue_screen.dart';
import 'package:think_spark/think_spark/screens/all_ideas/all_ideas_screen.dart';
import 'package:think_spark/think_spark/screens/all_meetings/all_meetings_screen.dart';
import 'package:think_spark/think_spark/screens/biometrics/controller/cubit/biometrics_cubit.dart';
import 'package:think_spark/think_spark/screens/categories/data/model/categoreis_with_ideas_response.dart';
import 'package:think_spark/think_spark/screens/change_password/change_password_screen.dart';
import 'package:think_spark/think_spark/screens/chat/chat_screen.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversation_args.dart';
import 'package:think_spark/think_spark/screens/conversation/conversation_screen.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/creative_navigation_menu.dart';
import 'package:think_spark/think_spark/screens/customer_service_chat/customer_service_chat_screen.dart';
import 'package:think_spark/think_spark/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/idea_details_screen.dart';
import 'package:think_spark/think_spark/screens/ideas_related_to_category/ideas_related_to_category_screen.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/investor_navigation_menu.dart';
import 'package:think_spark/think_spark/screens/login_activity/login_activity_screen.dart';
import 'package:think_spark/think_spark/screens/investor_navigation_menu/controller/cubit/investor_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/category_preferences/category_preferences_screen.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_cubit.dart';
import 'package:think_spark/think_spark/screens/confirmation/confirmation_screen.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';
import 'package:think_spark/think_spark/screens/forgot_password/forgot_password_screen.dart';
import 'package:think_spark/think_spark/screens/login/controller/cubit/login_cubit.dart';
import 'package:think_spark/think_spark/screens/login/login_screen.dart';
import 'package:think_spark/think_spark/screens/notifications/controller/cubit/notifications_cubit.dart';
import 'package:think_spark/think_spark/screens/notifications/notifications_screen.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/profile_screen.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/schedule_meeting_screen.dart';
import 'package:think_spark/think_spark/screens/splash/splash_screen.dart';
import 'package:think_spark/think_spark/screens/on_boarding/on_boarding_screen.dart';
import 'package:think_spark/think_spark/screens/reset_password/reset_password_screen.dart';
import 'package:think_spark/think_spark/screens/sign_options/sign_options_screen.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';
import 'package:think_spark/think_spark/screens/sign_up/sign_up_screen.dart';
import 'package:think_spark/think_spark/screens/splash_confirm/splash_confirm_screen.dart';
import 'package:think_spark/think_spark/screens/update_email/update_email_screen.dart';
import 'package:think_spark/think_spark/screens/verify_code/verify_code_screen.dart';
import 'package:think_spark/think_spark/screens/biometrics/biometrics_screen.dart';

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
          builder: (_) => BlocProvider.value(
            value: getIt<ForgotPasswordCubit>(),
            child: VerifyCodeScreen(),
          ),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: getIt<ForgotPasswordCubit>(),
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

      case Routes.investorNavigationMenu:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<InvestorNavigationCubit>(),
            child: InvestorNavigationMenu(),
          ),
        );

      case Routes.creativeNavigationMenu:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CreativeNavigationCubit>(),
            child: CreativeNavigationMenu(),
          ),
        );

      case Routes.allIdeasScreen:
        final ideas = settings.arguments as List<IdeaResponse>;
        return MaterialPageRoute(
          builder: (_) => AllIdeasScreen(ideas: ideas),
        );

      case Routes.ideaDetailsScreen:
        final idea = settings.arguments as IdeaResponse;
        return MaterialPageRoute(
            builder: (_) => IdeaDetailsScreen(ideaResponse: idea));

      case Routes.ideasRelatedToCategoryScreen:
        final categoriesRelatedIdeas =
            settings.arguments as CategoreisWithIdeasResponse;
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: getIt<IdeasCubit>(),
                  child: IdeasRelatedToCategoryScreen(
                      categoreisWithIdeasResponse: categoriesRelatedIdeas),
                ));

      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());

      case Routes.scheduleMeetingScreen:
        final ideaResponse = settings.arguments as IdeaResponse;

        return MaterialPageRoute(
            builder: (_) => ScheduleMeetingScreen(ideaResponse: ideaResponse));

      case Routes.allMeetingsScreen:
        return MaterialPageRoute(builder: (_) => AllMeetingsScreen());

      case Routes.changePasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: getIt<ForgotPasswordCubit>(),
                  child: ChangePasswordScreen(),
                ));

      case Routes.biometricsScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (_) => getIt<BiometricCubit>()..checkDeviceSupport(),
                  child: BiometricsScreen(),
                ));

      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());

      case Routes.loginActivityScreen:
        return MaterialPageRoute(builder: (_) => LoginActivityScreen());

      case Routes.updateEmailScreen:
        return MaterialPageRoute(builder: (_) => UpdateEmailScreen());

      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<NotificationsCubit>(),
            child: NotificationsScreen(),
          ),
        );

      case Routes.chatScreen:
        return MaterialPageRoute(builder: (_) => ChatScreen());

      case Routes.conversationScreen:
        final conversations = settings.arguments as ConversationArgs;
        return MaterialPageRoute(
            builder: (_) =>
                ConversationScreen(conversationsArgs: conversations));

      case Routes.customerServiceChatScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ProfileCubit>(),
            child: CustomerServiceScreen(),
          ),
        );

      case Routes.editClueScreen:
        final ideaResponse = settings.arguments as IdeaResponse;
        return MaterialPageRoute(
            builder: (_) => EditClueScreen(ideaResponse: ideaResponse));

      default:
        return null;
    }
  }
}
