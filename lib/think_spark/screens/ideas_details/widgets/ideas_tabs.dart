import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/about_tab.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/description_tab.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/photos_tab.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/requirments_tab.dart';

class SparkTabs extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const SparkTabs({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      SparkString.description,
      SparkString.requirement,
      SparkString.photos,
      SparkString.about
    ];

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
              children: [
                DescriptionTab(ideaResponse: ideaResponse),
                RequirementsTab(ideaResponse: ideaResponse),
                PhotosTab(ideaResponse: ideaResponse),
                AboutTab(ideaResponse: ideaResponse),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
