import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class RelatedCategories extends StatelessWidget {
  final String category;
  const RelatedCategories({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: SparkColors.onahau.withValues(alpha: .2),
      ),
      child: Text(
        category,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontSize: 13.sp, color: SparkColors.white),
      ),
    );
  }
}
