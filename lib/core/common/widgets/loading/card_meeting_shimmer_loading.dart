import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class CardMeetingShimmerLoading extends StatelessWidget {
  const CardMeetingShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: SparkSizes.gridViewSpacing,
      runSpacing: SparkSizes.gridViewSpacing,
      children: List.generate(3, (index) => index)
          .map((width) => SparkShimmerEffect(
                width: double.infinity,
                height: 200.h,
              ))
          .toList(),
    );
  }
}
