import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class ButtonTabsBar extends StatelessWidget {
  final String tabTitle1;
  final String tabTitle2;

  const ButtonTabsBar(
      {super.key, required this.tabTitle1, required this.tabTitle2});

  @override
  Widget build(BuildContext context) {
    return ButtonsTabBar(
      width: 160.w,
      height: 55.h,
      unselectedDecoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20), bottomEnd: Radius.circular(20)),
          color: Colors.transparent),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20), bottomEnd: Radius.circular(20)),
          gradient: LinearGradient(colors: SparkColors.linear)),
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
