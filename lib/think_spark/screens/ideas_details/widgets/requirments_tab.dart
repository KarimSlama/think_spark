import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/idea_description_title_and_details.dart';

class RequirementsTab extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const RequirementsTab({super.key, required this.ideaResponse});

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
              title: SparkString.technicalRequirements,
              details: ideaResponse.tabs.requirements.technical,
            ),
            IdeaDescriptionTitleAndDetails(
              title: SparkString.humanResources,
              details: ideaResponse.tabs.requirements.operational,
            ),
            IdeaDescriptionTitleAndDetails(
              title: SparkString.estimatedTeam,
              details: ideaResponse.tabs.requirements.team,
            ),
            IdeaDescriptionTitleAndDetails(
              title: SparkString.expectedCompletionDate,
              details: ideaResponse.tabs.requirements.expectedDuration,
            ),
          ],
        ),
      ),
    );
  }
}
