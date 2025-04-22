import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class ImagesCountWithLocation extends StatelessWidget {
    final IdeaResponse ideaResponse;

  const ImagesCountWithLocation({
    super.key,required this.ideaResponse
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
          spacing: SparkSizes.sm,
          title: ideaResponse.location ?? 'Unknown',
          icon: Iconsax.location,
        ),
      ],
    );
  }
}