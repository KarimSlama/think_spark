import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/curved_edges/curved_edges_widget.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/ideas_tabs.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/images_count_with_location.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/related_categories.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/slide_actions_icons.dart';

class IdeaDetailsScreen extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const IdeaDetailsScreen({super.key, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CurvedEdgeWidget(
            child: Container(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 2, vertical: SparkSizes.appBarHeight),
              decoration: BoxDecoration(
                color: SparkColors.darkBlue,
                borderRadius: BorderRadius.circular(30),
              ),
              width: double.infinity,
              height: 380.h,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    Assets.icons.shapes,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    right: 5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => context.pop(),
                          icon: Icon(Iconsax.arrow_left_24,
                              color: SparkColors.white),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 10.h,
                            children: [
                              Image.asset(
                                Assets.images.logo.path,
                                width: 90.w,
                              ),
                              Text(ideaResponse.title,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                          fontSize: 20.sp,
                                          color: SparkColors.white)),
                              IconWithTextInRow(
                                spacing: SparkSizes.sm,
                                title: ideaResponse.publisher,
                                width: 100.w,
                                icon: Iconsax.profile_2user,
                              ),
                              RelatedCategories(
                                  category: ideaResponse.categories[0].name),
                              SizedBox(height: SparkSizes.spaceBtwItems / 4),
                              ImagesCountWithLocation()
                            ],
                          ),
                        ),
                        SlideActionsIcons()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SparkTabs(ideaResponse: ideaResponse)),
        ],
      ),
    );
  }
}
