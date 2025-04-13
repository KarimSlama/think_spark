import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class SparkShimmerEffect extends StatelessWidget {
  final double width, height, radius;
  final Color? color;
  const SparkShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 15,
      this.color});

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);

    return Shimmer.fromColors(
      baseColor: dark ? SparkColors.darkGrey : Colors.grey[300]!,
      highlightColor: dark ? SparkColors.darkGrey.withValues(alpha: .6) : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? SparkColors.darkGrey : SparkColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
