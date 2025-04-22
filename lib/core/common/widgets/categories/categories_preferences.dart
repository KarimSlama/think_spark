import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/containers/category_container.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class CategoriesPreferences extends StatelessWidget {
  final List<String> titles;
  final bool Function(int index)? isSelected;
  final Function(int index)? onTap;

  const CategoriesPreferences({
    super.key,
    required this.titles,
    this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);

    return Wrap(
      spacing: SparkSizes.gridViewSpacing,
      runSpacing: SparkSizes.gridViewSpacing,
      children: List.generate(titles.length, (index) {
        return CategoryContainer(
          title: titles[index],
          isSelected: isSelected != null ? isSelected!(index) : false,
          textColor: dark ? SparkColors.white : SparkColors.black,
          onTap: () => onTap?.call(index),
        );
      }),
    );
  }
}
