import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';

SizedBox verticalSpace(double height) => SizedBox(
      height: height.h,
    );

SizedBox horizontalSpace(double width) => SizedBox(
      width: width.w,
    );

Container verticalLine() => Container(
      width: 80.w,
      height: 1.h,
      color: AppColors.light.withValues(alpha: .4),
    );
