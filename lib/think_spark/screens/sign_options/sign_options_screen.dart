import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:think_spark/core/common/widgets/social_register/social_register.dart';
import 'package:think_spark/core/common/widgets/texts/divider_text.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class SignOptionsScreen extends StatelessWidget {
  const SignOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 20),
        width: double.infinity,
        height: 450.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 18.h,
          children: [
            Text(
              SparkString.stayInTheKnow,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 15.sp),
                    text: SparkString
                        .aSafeSpaceToShareCollaborateAndGrowYourVision,
                  ),
                  TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 15.sp,
                          decoration: TextDecoration.underline,
                        ),
                    text: SparkString.getInTouchByRegister,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamed(Routes.signUpScreen),
                child: Text(SparkString.signUp),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: SparkHelperFunctions.isDark(context)
                      ? SparkColors.white
                      : SparkColors.black,
                ),
                onPressed: () => context.pushNamed(Routes.loginScreen),
                child: Text(SparkString.login),
              ),
            ),
            const SparkDividerWidget(dividerText: SparkString.orContinueWith),
            SocialRegister(),
          ],
        ),
      ),
      body: Lottie.asset(Assets.images.signWelcome),
    );
  }
}
