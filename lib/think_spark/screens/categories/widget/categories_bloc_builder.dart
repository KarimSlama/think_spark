import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/categories/categories_preferences.dart';
import 'package:think_spark/core/common/widgets/loading/categories_shimmer.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/categories/controller/cubit/categories_cubit.dart';
import 'package:think_spark/think_spark/screens/categories/controller/cubit/categories_state.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CategoriesShimmerEffect(),
          loaded: (categories) => FadeIn(
            duration: const Duration(milliseconds: 400),
            child: Column(
              spacing: SparkSizes.spaceBtwItems,
              children: [
                SectionHeading(
                    text: SparkString.popularCategories, isActionButton: false),
                CategoriesPreferences(
                  titles: categories.map((e) => e.categoryName).toList(),
                  onTap: (index) {
                    context.pushNamed(
                      Routes.ideasRelatedToCategoryScreen,
                      arguments: categories[index],
                    );
                  },
                )
              ],
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
