import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: SparkColors.linear,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Column(
                spacing: 10.h,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      width: 220.w,
                      image: AssetImage(Assets.images.lightBulbPng.path)),
                  SvgPicture.asset(
                      dark
                          ? Assets.images.lightThinkSpark
                          : Assets.images.darkThinkSpark,
                      width: 260.w),
                  Text(
                    SparkString.theSocietyOfNewIdeas,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: SparkColors.white,
                        ),
                  ),
                ],
              ),
              SvgPicture.asset(Assets.images.circleBg),
            ],
          )),
    );
  }

  Future navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4), () {
      context.pushNamed(
        Routes.onBoardingScreen,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
}
