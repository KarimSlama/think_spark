import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class UserNamePhoneShimmerEffect extends StatelessWidget {
  final int itemCount;
  const UserNamePhoneShimmerEffect({super.key, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.sm,
      children: [
        SparkShimmerEffect(width: 100, height: 15),
        SparkShimmerEffect(width: 80, height: 12),
      ],
    );
  }
}
