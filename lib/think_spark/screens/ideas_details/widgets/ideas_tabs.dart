import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/idea_description_title_and_details.dart';

class SparkTabs extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const SparkTabs({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    final tabs = ["Description", "Requirement", "Photos", "About"];

    return DefaultTabController(
      length: 4,
      child: Column(
        spacing: 16.h,
        children: [
          TabBar(
            isScrollable: true,
            indicatorColor: SparkColors.blue,
            indicatorWeight: .6,
            indicatorPadding: EdgeInsetsDirectional.only(end: 20),
            labelColor: SparkHelperFunctions.isDark(context)
                ? SparkColors.white
                : SparkColors.black,
            unselectedLabelColor: SparkColors.light,
            dividerColor: Colors.transparent,
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
          Expanded(
            child: TabBarView(
              children: tabs
                  .map(
                    (e) => SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(SparkSizes.ms),
                        child: Column(
                          spacing: 10.h,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IdeaDescriptionTitleAndDetails(
                                title: 'The Problems:',
                                details: ideaResponse.problems),
                            IdeaDescriptionTitleAndDetails(
                              title: 'The Solutions:',
                              details: ideaResponse.solutions,
                            ),
                            IdeaDescriptionTitleAndDetails(
                              title: 'Why it Workds? ',
                              details: ideaResponse.whyItWorks,
                            ),
                            IdeaDescriptionTitleAndDetails(
                              title: 'The Vision:',
                              details: ideaResponse.benifits,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
