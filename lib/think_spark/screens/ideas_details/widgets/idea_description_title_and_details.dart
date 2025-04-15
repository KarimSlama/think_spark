import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class IdeaDescriptionTitleAndDetails extends StatelessWidget {
  final String title;
  final String details;
  const IdeaDescriptionTitleAndDetails(
      {super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        Text(
          details,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .apply(color: SparkColors.darkGrey),
        ),
      ],
    );
  }
}
