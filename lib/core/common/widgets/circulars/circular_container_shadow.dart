import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class CircularContainerShadow extends StatelessWidget {
  const CircularContainerShadow({
    super.key,
    required this.icon,
    this.isSelected,
    this.padding = 0,
    this.width,
    this.height,
    this.radius,
  });

  final Widget icon;
  final bool? isSelected;
  final double padding;
  final double? width;
  final double? height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);
    return Container(
      padding: EdgeInsetsDirectional.all(padding),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: dark ? SparkColors.black : SparkColors.white,
        borderRadius: BorderRadiusDirectional.circular(radius ?? 100),
        boxShadow: [
          BoxShadow(
            color: dark
                ? SparkColors.white.withValues(alpha: .1)
                : SparkColors.black.withValues(alpha: .1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: icon,
    );
  }
}
