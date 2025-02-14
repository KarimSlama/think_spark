import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';

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
        color: Theme.of(context).colorScheme.surface,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20), bottomEnd: Radius.circular(20)),
          gradient: LinearGradient(colors: AppColors.linear)),
      unselectedLabelStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
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
