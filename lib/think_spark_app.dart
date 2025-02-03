import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/theming/app_themes/theme_dark.dart';
import 'package:think_spark/core/theming/app_themes/thme_light.dart';

class ThinkSparkApp extends StatelessWidget {
  final AppRouter appRouter;
  const ThinkSparkApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: AppString.appTitle,
        theme: themeLight,
        darkTheme: themeDark,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
