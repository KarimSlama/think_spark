import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class NotificationDotIcon extends StatelessWidget {
  final Color? dotBgColor;

  const NotificationDotIcon({super.key, this.dotBgColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.notification, color: SparkColors.doggerBlue)),
        PositionedDirectional(
          top: 12,
          end: 12,
          child: Container(
            width: 10.w,
            height: 10.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: dotBgColor ?? SparkColors.orange),
          ),
        ),
      ],
    );
  }
}
