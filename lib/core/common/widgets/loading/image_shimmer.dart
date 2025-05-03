import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';

class ImageShimmerShimmerEffect extends StatelessWidget {
  final double width, height, radius;
  const ImageShimmerShimmerEffect(
      {super.key, this.width = 150, this.height = 150, this.radius = 200});

  @override
  Widget build(BuildContext context) {
    return SparkShimmerEffect(width: width, height: height,  radius: radius);
  }
}
