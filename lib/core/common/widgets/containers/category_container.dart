import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class CategoryContainer extends StatelessWidget {
  final String title;
  final Color? textColor;
  final Color borderColor, backgroundColor;
  final double? borderWidth;
  final double borderRadius;
  final bool isSelected, isItemHasSmallInput;
  final VoidCallback? onTap;
  const CategoryContainer(
      {super.key,
      required this.title,
      this.textColor,
      this.borderColor = SparkColors.light,
      this.backgroundColor = Colors.transparent,
      this.borderWidth = 1,
      this.borderRadius = 60,
      this.isSelected = false,
      this.isItemHasSmallInput = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isShortWord = title.length <= 6;
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsetsDirectional.all(SparkSizes.ms),
          constraints: BoxConstraints(
            minWidth: isShortWord ? 80.w : 0,
            maxWidth: 200.w,
          ),
          decoration: BoxDecoration(
            color: isSelected ? SparkColors.darkBlue : backgroundColor,
            border: Border.all(
              width: borderWidth!.w,
              style: BorderStyle.solid,
              color: isSelected
                  ? (SparkHelperFunctions.isDark(context)
                      ? Colors.transparent
                      : SparkColors.darkBlue)
                  : borderColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: isSelected
                        ? SparkColors.white
                        : textColor ??
                            (SparkHelperFunctions.isDark(context)
                                ? SparkColors.white
                                : SparkColors.black),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
