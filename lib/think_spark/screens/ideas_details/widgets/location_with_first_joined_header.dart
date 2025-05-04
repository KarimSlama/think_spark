import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class LocationWithFirstJoinedHeader extends StatelessWidget {
  const LocationWithFirstJoinedHeader({
    super.key,
    required this.ideaResponse,
  });

  final IdeaResponse ideaResponse;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            IconWithTextInRow(
              spacing: SparkSizes.sm,
              color: SparkHelperFunctions.isDark(context)
                  ? SparkColors.light
                  : SparkColors.black.withValues(alpha: .5),
              title: ideaResponse.location,
              icon: Iconsax.location,
            ),
          ],
        ),
        IconWithTextInRow(
          spacing: SparkSizes.sm,
          color: SparkHelperFunctions.isDark(context)
              ? SparkColors.light
              : SparkColors.black.withValues(alpha: .5),
          title: SparkHelperFunctions.formatDateTime(
            ideaResponse.createdAt.toString(),
          ),
          icon: Iconsax.timer_1,
        ),
      ],
    );
  }
}