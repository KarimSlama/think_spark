import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/common/widgets/icons/favorite_icon.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class SlideActionsIcons extends StatelessWidget {
  final String id;
  const SlideActionsIcons({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.sm,
      children: [
        GestureDetector(
          onTap: () {},
          child: CircularContainer(
            width: 40.w,
            height: 40.h,
            color: SparkColors.white,
            child: Icon(Iconsax.calendar, color: SparkColors.anakiwa),
          ),
        ),
        FavoriteIcon(ideaId: id),
      ],
    );
  }
}
