import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class SparkDividerWidget extends StatelessWidget {
  final String dividerText;
  const SparkDividerWidget({super.key, required this.dividerText});

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? SparkColors.darkGrey : SparkColors.black,
            thickness: .5.h,
            indent: 60,
            endIndent: 4,
          ),
        ),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? SparkColors.darkGrey : SparkColors.black,
            thickness: .5.h,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}