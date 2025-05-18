import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class CircularImageWithShadow extends StatelessWidget {
  const CircularImageWithShadow({
    super.key,
    this.showBorder = false,
    this.onImageTapped,
    required this.widget,
    required this.padding,
  });

  final bool showBorder;
  final VoidCallback? onImageTapped;
  final Widget? widget;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return CircularContainerShadow(
      showBorder: showBorder,
      widget: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: GestureDetector(
          onTap: onImageTapped,
          child: widget ??
              Icon(Iconsax.profile_2user, color: SparkColors.doggerBlue),
        ),
      ),
      padding: padding ?? SparkSizes.md,
    );
  }
}
