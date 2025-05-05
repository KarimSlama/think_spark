import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/idea_description_title_and_details.dart';

class DescriptionTab extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const DescriptionTab({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(SparkSizes.ms),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IdeaDescriptionTitleAndDetails(
              title: SparkString.theProblems,
              details: ideaResponse.tabs.description.problems,
            ),
            IdeaDescriptionTitleAndDetails(
              title: SparkString.theSolutions,
              details: ideaResponse.tabs.description.solutions,
            ),
            IdeaDescriptionTitleAndDetails(
              title: SparkString.whyItWorks,
              details: ideaResponse.tabs.description.whyItWorks,
            ),
            IdeaDescriptionTitleAndDetails(
              title: SparkString.theVision,
              details: ideaResponse.tabs.description.benifits,
            ),
          ],
        ),
      ),
    );
  }
}
