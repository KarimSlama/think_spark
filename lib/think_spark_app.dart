import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/core/theme/theme.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';

class ThinkSparkApp extends StatelessWidget {
  final AppRouter appRouter;
  const ThinkSparkApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
  return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ProfileCubit>()
            ..fetchProfile(),
          ),
          BlocProvider(
            create: (context) => getIt<IdeasCubit>()
            ..fetchAllIdeas(),
          ),
          BlocProvider(
            create: (context) => getIt<FavoriteCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<DrawerCubit>(),
          ),
          
        ],
        child: MaterialApp(
          title: SparkString.appTitle,
          theme: SparkTheme.lightTheme,
          darkTheme: SparkTheme.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          initialRoute:
              isLoggedUser ? Routes.navigationMenu : Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
