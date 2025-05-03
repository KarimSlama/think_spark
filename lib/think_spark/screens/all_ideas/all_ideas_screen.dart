import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
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
              child:  ProfileImageCircular(width: 45.w, height: 45.h),),
          ],
        ),
        body: FloatingWidget(
          mainScreenWidget: Column(
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
          ),
        ));
  }
}
