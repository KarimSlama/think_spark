import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_cubit.dart';
import 'package:think_spark/think_spark/screens/favorite/controller/cubit/favorite_state.dart';

class BlueCard extends StatelessWidget {
  final IdeaResponse ideaResponse;
  final bool? isExpanded;
  const BlueCard({super.key, required this.ideaResponse, this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.pushNamed(Routes.ideaDetailsScreen,
              arguments: ideaResponse),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return FadeIn(
                duration: const Duration(milliseconds: 800),
                child: Container(
                  height: 180.h,
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(SparkSizes.productImageRadius),
                    color: SparkColors.darkBlue,
                  ),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.shapeBg,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Positioned(
                        top: 5,
                        left: 5,
                        right: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              Assets.images.logo.path,
                              width: 40.w,
                            ),
                            Row(
                              spacing: SparkSizes.sm,
                              children: [
                                MeetingsIcon(ideaResponse: ideaResponse),
                                FavoriteIcon(
                                    ideaId: ideaResponse.id.toString()),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding:
                              const EdgeInsets.all(SparkSizes.defaultSpace),
                          child: Column(
                            spacing: SparkSizes.sm,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                  title: ideaResponse.categories[0].name,
                                  icon: Iconsax.box_15)
                            ],
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 10,
                        child: Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: SparkSizes.sm),
                            child: IconWithTextInRow(
                                spacing: SparkSizes.sm,
                                title: ideaResponse.user.username,
                                icon: Iconsax.profile_2user)),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
