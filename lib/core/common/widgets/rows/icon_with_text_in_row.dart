import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class IconWithTextInRow extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? spacing;
  final double? maxWidth;
  final bool flexibleText;
  final Color? color;

  const IconWithTextInRow({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    this.spacing,
    this.maxWidth,
    this.flexibleText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing ?? 0,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color ?? SparkColors.light),
        flexibleText
            ? Flexible(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: color ??SparkColors.light),
                ),
              )
            : ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: maxWidth ?? double.infinity,
                ),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: color ?? SparkColors.light),
                ),
              ),
      ],
    );
  }
}
