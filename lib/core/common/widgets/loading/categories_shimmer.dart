import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class CategoriesShimmerEffect extends StatelessWidget {
  const CategoriesShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    final popularWidths = [130.0, 80.0, 100.0, 70.0, 90.0, 85.0, 75.0];
    final filterWidths = [50.0, 80.0, 100.0, 70.0];
    final locationWidths = [60.0, 55.0, 70.0, 65.0, 75.0, 85.0, 60.0];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionShimmer(popularWidths),

        SizedBox(height: SparkSizes.spaceBtwItems),

        _buildSectionShimmer(filterWidths),

        SizedBox(height: SparkSizes.spaceBtwItems),

        _buildSectionShimmer(locationWidths),
      ],
    );
  }

  Widget _buildSectionShimmer(List<double> widths) {
    return Wrap(
      spacing: SparkSizes.gridViewSpacing,
      runSpacing: SparkSizes.gridViewSpacing,
      children: widths
          .map((width) => SparkShimmerEffect(
                width: width.w,
                height: 40.h,
                radius: 30.r,
              ))
          .toList(),
    );
  }
}