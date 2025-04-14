import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class IconWithTextInRow extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? spacing;
  final bool isBlue;
  const IconWithTextInRow({
    super.key,
    required this.title,
    required this.icon,
    this.spacing,
    this.isBlue = true,
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
          width: 80.w,
          child: Text(title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: SparkColors.white)),
        ),
      ],
    );
  }
}
