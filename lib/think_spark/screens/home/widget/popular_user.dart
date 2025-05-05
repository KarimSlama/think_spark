import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class PopularUser extends StatelessWidget {
  final String name;
  final Widget? widget;
  final String bio;
  final double? padding;
  final VoidCallback? onPressed, onImageTapped;

  const PopularUser(
      {super.key,
      required this.name,
      this.widget,
      required this.bio,
      this.padding,
      this.onPressed,
      this.onImageTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              CircularContainerShadow(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: GestureDetector(
                    onTap: onImageTapped,
                    child: widget ??
                        Icon(Iconsax.profile_2user,
                            color: SparkColors.doggerBlue),
                  ),
                ),
                padding: padding ?? SparkSizes.md,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.55,
                ),
                child: Column(
                  spacing: SparkSizes.xs,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      bio,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Iconsax.more),
          )
        ],
      ),
    );
  }
}
