import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/icons/favorite_icon.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class FavoriteCard extends StatelessWidget {
  final String title;
  final String category;
  final String name;
  final String id;
  final VoidCallback? onTap;
  const FavoriteCard({
    super.key,
    required this.title,
    required this.category,
    required this.name,
    required this.id,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 20),
      child: CircularContainerShadow(
        padding: 10,
        radius: 40,
        widget: Row(
          spacing: SparkSizes.spaceBtwItems,
          children: [
            Image.asset(
              Assets.images.logo.path,
              width: 60.w,
            ),
            Expanded(
              child: Column(
                spacing: SparkSizes.sm,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 20.sp, color: SparkColors.blue)),
                  IconWithTextInRow(
                      spacing: SparkSizes.sm,
                      title: category,
                      icon: Iconsax.box),
                  IconWithTextInRow(
                      spacing: SparkSizes.sm,
                      title: name,
                      icon: Iconsax.profile_2user)
                ],
              ),
            ),
            FavoriteIcon(ideaId: id, onTap: onTap),
          ],
        ),
      ),
    );
  }
}
