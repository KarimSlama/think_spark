import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class IconWithTextInRow extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? spacing, width;
  final bool isBlue;
  const IconWithTextInRow({
    super.key,
    required this.title,
    required this.icon,
    this.spacing,
    this.isBlue = true,
    this.width = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing ?? 0,
      mainAxisAlignment:
          isBlue ? MainAxisAlignment.center : MainAxisAlignment.center,
      children: [
        Icon(icon, color: SparkColors.white),
        SizedBox(
          width: width,
          child: Text(title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: SparkColors.white)),
        ),
      ],
    );
  }
}
