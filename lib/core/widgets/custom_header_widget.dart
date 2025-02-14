import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/gen/assets.gen.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String title;
  final String subTitl;
  const CustomHeaderWidget({super.key, required this.title, required this.subTitl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 12.h,
      children: [
        SvgPicture.asset(Assets.images.thinkSpark, width: 220.w),
        Text(
          title,
          style:
              Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 24.sp),
        ),
        Text(subTitl),
      ],
    );
  }
}
