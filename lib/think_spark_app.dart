import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/core/theme/theme.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_cubit.dart';

class ThinkSparkApp extends StatelessWidget {
  final AppRouter appRouter;
  final bool isDark;
  const ThinkSparkApp(
      {super.key, required this.appRouter, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ProfileCubit>()
              ..fetchProfile()
              ..changeMode(Constants.isDark),
          ),
          BlocProvider(
            create: (context) => getIt<IdeasCubit>()..fetchAllIdeas(),
          ),
          BlocProvider(
            create: (context) => getIt<FavoriteCubit>(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<ScheduleMeetingCubit>()..fetchSchedulingMeetings(),
          ),
          BlocProvider(
            create: (context) => getIt<ChatCubit>()..fetchConversations(),
          ),
          BlocProvider(
            create: (context) => getIt<DrawerCubit>(),
          ),
        ],
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return MaterialApp(
              navigatorKey: Constants.navigatorKey,
              title: SparkString.appTitle,
              theme: context.read<ProfileCubit>().isDark
                  ? SparkTheme.darkTheme
                  : SparkTheme.lightTheme,
              themeMode: ThemeMode.system,
              debugShowCheckedModeBanner: false,
              initialRoute: isLoggedUser
                  ? Routes.creativeNavigationMenu
                  //  (Constants.userRole == 'creative'
                  //     ? Routes.creativeNavigationMenu
                  //     : Routes.investorNavigationMenu)
                  : Routes.onBoardingScreen,
              onGenerateRoute: appRouter.generateRoute,
            );
          },
        ),
      ),
    );
  }
}
