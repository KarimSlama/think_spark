import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class RemoveIcon extends StatelessWidget {
  final String ideaId;
  final VoidCallback? onTap;

  const RemoveIcon({super.key, required this.ideaId, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircularContainer(
        width: 35.w,
        height: 35.h,
        color: SparkColors.white,
        child:
            Icon(Iconsax.trash, color: SparkColors.red.withValues(alpha: .6)),
      ),
    );
  }
}
