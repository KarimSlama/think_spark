import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_widget.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/sign_options/widget/continue_with_widget.dart';
import 'package:think_spark/think_spark/screens/sign_options/widget/social_register.dart';

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
              AppString.stayInTheKnow,
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
                    text:
                        AppString.aSafeSpaceToShareCollaborateAndGrowYourVision,
                  ),
                  TextSpan(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 15.sp,
                          decoration: TextDecoration.underline,
                        ),
                    text: AppString.getInTouchByRegister,
                  ),
                ],
              ),
            ),
            ButtonWidget(
                onBackPressed: () {},
                btnText: AppString.signUp,
                width: double.infinity),
            ButtonWidget(
              onBackPressed: () {},
              btnText: AppString.login,
              width: double.infinity,
              color: AppColors.black,
            ),
            ContinueWithWidget(),
            SocialRegister(),
          ],
        ),
      ),
      body: Image.asset(Assets.images.signAdjust.path),
    );
  }
}
