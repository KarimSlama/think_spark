import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class SlidableActionIcons extends StatelessWidget {
  final VoidCallback onDelete;

  const SlidableActionIcons({
    required this.onDelete,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: SparkSizes.ms),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {},
              child: const Icon(Iconsax.message, color: SparkColors.blue)),
          GestureDetector(
              onTap: onDelete,
              child: const Icon(Iconsax.trash, color: SparkColors.red)),
        ],
      ),
    );
  }
}
