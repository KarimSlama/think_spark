import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SplashConfirmScreen extends StatefulWidget {
  const SplashConfirmScreen({super.key});

  @override
  State<SplashConfirmScreen> createState() => _SplashConfirmScreenState();
}

class _SplashConfirmScreenState extends State<SplashConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        spacing: 16.h,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.images.thinkSpark),
          Text(AppString.welcomeToThinkSpark),
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
