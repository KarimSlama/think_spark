import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/icons/favorite_icon.dart';
import 'package:think_spark/core/common/widgets/icons/meetings_icon.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class OliveCard extends StatelessWidget {
  final IdeaResponse ideaResponse;
  final double? width;
  const OliveCard({super.key, required this.ideaResponse, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.pushNamed(Routes.ideaDetailsScreen, arguments: ideaResponse),
      child: FadeIn(
        duration: const Duration(milliseconds: 800),
        child: Container(
          width: width,
          height: 200.h,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SparkSizes.productImageRadius),
            color: SparkColors.olive,
          ),
          child: Stack(
            children: [
              SvgPicture.asset(Assets.icons.shapeBg, fit: BoxFit.fill),
              Positioned(
                top: 5,
                left: 5,
                right: 5,
                child: Row(
                  spacing: SparkSizes.sm,
                  children: [
                    MeetingsIcon(ideaResponse: ideaResponse),
                    FavoriteIcon(ideaId: ideaResponse.id.toString()),
                  ],
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: SparkSizes.md),
                  child: Column(
                    spacing: SparkSizes.sm,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(ideaResponse.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(color: SparkColors.white)),
                      ),
                      IconWithTextInRow(
                          title: ideaResponse.categories[0].name,
                          icon: Iconsax.box_15)
                    ],
                  ),
                ),
              ),
              PositionedDirectional(
                bottom: 10,
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: SparkSizes.sm),
                  child: IconWithTextInRow(
                      spacing: SparkSizes.sm,
                      title: ideaResponse.user.username,
                      icon: Iconsax.profile_2user),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
