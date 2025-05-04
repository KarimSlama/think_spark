import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

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
        formatRequirementsWithIcons(details, context),
      ],
    );
  }
}

Widget formatRequirementsWithIcons(String rawText, BuildContext context) {
  List<String> sentences = rawText.split('. ');

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: sentences.map((sentence) {
      List<String> parts = sentence.split(': ');

      return Padding(
        padding: EdgeInsets.only(bottom: SparkSizes.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.circle,
                    size: SparkSizes.sm,
                    color: SparkColors.onahau,
                  ),
                ),
                SizedBox(width: SparkSizes.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${parts[0]}${parts.length > 1 ? ':' : ''}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: SparkColors.darkGrey),
                      ),
                      if (parts.length > 1)
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: SparkSizes.defaultSpace),
                          child: Text(
                            parts[1],
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .apply(color: SparkColors.darkGrey),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }).toList(),
  );
}
