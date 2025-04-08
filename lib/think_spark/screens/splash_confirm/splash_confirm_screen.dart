import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SplashConfirmScreen extends StatefulWidget {
  const SplashConfirmScreen({super.key});

  @override
  State<SplashConfirmScreen> createState() => _SplashConfirmScreenState();
}

class _SplashConfirmScreenState extends State<SplashConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);

    return Scaffold(
        body: Center(
      child: Column(
        spacing: 18.h,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
              dark
                  ? Assets.images.darkThinkSpark
                  : Assets.images.lightThinkSpark,
              width: 200.w),
          Text(SparkString.welcomeToThinkSpark,
              style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    ));
  }

  Future navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(
        Routes.loginScreen,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
}
