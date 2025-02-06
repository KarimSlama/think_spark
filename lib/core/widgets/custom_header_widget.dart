import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/gen/assets.gen.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 12.h,
      children: [
        SvgPicture.asset(Assets.images.thinkSpark, width: 220.w),
        Text(
          AppString.welcomeBack,
          style:
              Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 24.sp),
        ),
        Text(AppString.letsRegisterInvestInYourMind),
      ],
    );
  }
}
