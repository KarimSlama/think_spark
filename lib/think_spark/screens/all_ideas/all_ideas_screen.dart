import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_search_bar_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/all_ideas/widget/all_ideas_cards_bloc_builder.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class AllIdeasScreen extends StatelessWidget {
  final List<IdeaResponse> ideas;
  const AllIdeasScreen({super.key, required this.ideas});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: SparkAppBar(
          showBackArrow: true,
          title: SvgPicture.asset(
            SparkHelperFunctions.isDark(context)
                ? Assets.images.darkThinkSpark
                : Assets.images.lightThinkSpark,
            width: 150.w,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(SparkSizes.xs),
              child: Row(
                spacing: 16.w,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: CircularContainerShadow(
                      icon: Image.network(
                          'https://avatars.githubusercontent.com/u/96607967?s=400&u=14a56861ed5617cba18b4ba5a644c7e08bdbde37&v=4'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: Column(
          spacing: SparkSizes.spaceBtwSections,
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(SparkSizes.ms),
                  child: Column(
                    spacing: 14.h,
                    children: [
                      SparkSearchBarField(),
                      AllIdeasCardsBlocBuilder(ideas: ideas),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
