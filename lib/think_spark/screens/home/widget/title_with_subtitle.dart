import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';

class ScreenTitleWithSubTitle extends StatelessWidget {
  const ScreenTitleWithSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${SparkString.hey} Karim👋',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .apply(color: SparkColors.darkGrey),
        ),
        Text(
          SparkString.creativityEffortlesslyCommunication,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 20.sp),
        ),
      ],
    );
  }
}
