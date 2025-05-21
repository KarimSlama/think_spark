import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class PopularUserShimmerLoading extends StatelessWidget {
  const PopularUserShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.ms,
      children: List.generate(
        3,
        (index) => Row(
          spacing: SparkSizes.md,
          children: [
            SparkShimmerEffect(width: 70.w, height: 70.h, radius: 100.r),
            Column(
              spacing: SparkSizes.md,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SparkShimmerEffect(width: 150.w, height: 20.h),
                SparkShimmerEffect(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 20.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
