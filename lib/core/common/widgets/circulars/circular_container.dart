import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class CircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color color;

  const CircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 50,
    this.padding = 0,
    this.child,
    this.color = SparkColors.light,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: child,
    );
  }
}
