import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class PopularUser extends StatelessWidget {
  const PopularUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            CircularContainerShadow(
              icon: Icon(Iconsax.profile_2user, color: SparkColors.doggerBlue),
              padding: SparkSizes.md,
            ),
            Column(
              spacing: SparkSizes.xs,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Karim Slama",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Software Developer",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.more),
        )
      ],
    );
  }
}
