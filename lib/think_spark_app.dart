import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theme/theme.dart';

class ThinkSparkApp extends StatelessWidget {
  final AppRouter appRouter;
  const ThinkSparkApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
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
    );
  }
}
