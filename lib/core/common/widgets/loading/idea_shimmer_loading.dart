import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';

class IdeaShimmerLoading extends StatelessWidget {
  const IdeaShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (rowIndex) {
        return Row(
          spacing: 14.w,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: rowIndex % 2 == 0
                  ? SparkShimmerEffect(
                      height: 180.h,
                      width: 190.w,
                    )
                  : SparkShimmerEffect(
                      width: 145.w,
                      height: 200.h,
                    ),
            ),
            Flexible(
              child: rowIndex % 2 == 0
                  ? SparkShimmerEffect(
                      width: 145.w,
                      height: 200.h,
                    )
                  : SparkShimmerEffect(
                      height: 180.h,
                      width: 190.w,
                    ),
            ),
          ].whereType<Widget>().toList(),
        );
      }),
    );
  }
}
