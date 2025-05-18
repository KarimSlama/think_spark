import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class ButtonTabsBar extends StatelessWidget {
  final String tabTitle1;
  final String tabTitle2;
  final double topStartRadius, bottomEndRadius;
  final bool isLinear, isCurve;
  final Color? color;

  const ButtonTabsBar({
    super.key,
    required this.tabTitle1,
    required this.tabTitle2,
    this.topStartRadius = 0,
    this.bottomEndRadius = 0,
    this.isLinear = false,
    this.isCurve = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonsTabBar(
      width: 160.w,
      height: 55.h,
      unselectedDecoration: BoxDecoration(
          borderRadius: isCurve
              ? BorderRadiusDirectional.only(
                  topStart: Radius.circular(topStartRadius),
                  bottomEnd: Radius.circular(bottomEndRadius))
              : BorderRadius.circular(12),
          color: Colors.transparent),
      decoration: BoxDecoration(
          borderRadius: isCurve
              ? BorderRadiusDirectional.only(
                  topStart: Radius.circular(topStartRadius),
                  bottomEnd: Radius.circular(bottomEndRadius))
              : BorderRadius.circular(12),
          gradient:
              isLinear ? LinearGradient(colors: SparkColors.linear) : null,
          color: color),
      unselectedLabelStyle: TextStyle(
          color: SparkHelperFunctions.isDark(context)
              ? SparkColors.light
              : SparkColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 16.sp),
      contentCenter: true,
      tabs: [
        Tab(
          text: tabTitle1,
        ),
        Tab(
          text: tabTitle2,
        ),
      ],
    );
  }
}
