import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_image_with_shadow.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';

class PopularUser extends StatelessWidget {
  final String name;
  final Widget? widget;
  final String text;
  final double? padding;
  final Color? titleColor;
  final String? timeText;
  final VoidCallback? onPressed, onImageTapped;
  final bool showMoreIcon, showBorder, isLargeBio;

  const PopularUser(
      {super.key,
      required this.name,
      this.widget,
      required this.text,
      this.padding,
      this.onPressed,
      this.onImageTapped,
      this.showMoreIcon = true,
      this.titleColor,
      this.timeText,
      this.showBorder = false,
      this.isLargeBio = false});

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
              CircularImageWithShadow(showBorder: showBorder, onImageTapped: onImageTapped, widget: widget, padding: padding),
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
                      style: Theme.of(context).textTheme.titleLarge!.apply(
                            color: titleColor,
                          ),
                    ),
                    Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: isLargeBio
                          ? Theme.of(context).textTheme.bodyLarge
                          : Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          showMoreIcon
              ? IconButton(
                  onPressed: onPressed,
                  icon: Icon(Iconsax.more),
                )
              : Text(timeText ?? ''),
        ],
      ),
    );
  }
}