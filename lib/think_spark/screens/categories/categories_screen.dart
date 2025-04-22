import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_search_bar_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/think_spark/screens/categories/widget/categories_bloc_builder.dart';
import 'package:think_spark/think_spark/screens/home/widget/drawer_side_navigation_menu.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DrawerSideNavigationMenu(),
        Expanded(
          child: FloatingWidget(
            mainScreenWidget: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: SparkSizes.ms, vertical: SparkSizes.defaultSpace),
              child: Column(
                spacing: SparkSizes.spaceBtwSections,
                children: [
                  SparkSearchBarField(),
                  CategoriesBlocBuilder(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
