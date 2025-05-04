import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class ImagesCountWithLocation extends StatelessWidget {
  const ImagesCountWithLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithTextInRow(
          spacing: SparkSizes.sm,
          title: '+10 Photos',
          icon: Iconsax.image,
        ),
        IconWithTextInRow(
          width: 90.w,
          spacing: SparkSizes.sm,
          title: 'Cairo, Egypt',
          icon: Iconsax.location,
        ),
      ],
    );
  }
}