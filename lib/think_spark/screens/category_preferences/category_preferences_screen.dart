import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/categories/categories_preferences.dart';
import 'package:think_spark/core/common/widgets/loading/categories_shimmer.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_cubit.dart';
import 'package:think_spark/think_spark/screens/category_preferences/controller/preferences_state.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/model/preferences_response.dart';

class CategoryPreferencesScreen extends StatelessWidget {
  const CategoryPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PreferencesResponse>? titles;
    List<PreferencesResponse>? filters;
    List<PreferencesResponse>? locations;
    final preferencesCubit = context.read<PreferencesCubit>();

    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.preferences,
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: SparkSizes.md),
        child: SingleChildScrollView(
          child: BlocBuilder<PreferencesCubit, PreferencesState>(
            builder: (context, state) {
              if (state.isLoading) {
                return CategoriesShimmerEffect();
              }
              if (state.error != null) {
                return Text(state.error!);
              }
              titles = state.categories;
              filters = state.filters;
              locations = state.locations;
              return Column(
                spacing: SparkSizes.defaultSpace,
                children: [
                  /// Popular Categories
                  Column(
                    spacing: SparkSizes.spaceBtwItems,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionHeading(
                        text: SparkString.popular,
                        onPressed: () {},
                      ),
                      CategoriesPreferences(
                        titles: titles?.map((e) => e.name).toList() ?? [],
                        isSelected: (index) =>
                            state.selectedPreferences[titles![index].id] ??
                            false,
                        onTap: (index) {
                          final categoryId = titles?[index].id ?? 0;
                          preferencesCubit.toggleSelectedPreference(categoryId);
                        },
                      )
                    ],
                  ),

                  /// Fillter Categories
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: SparkSizes.spaceBtwItems,
                    children: [
                      SectionHeading(
                          text: SparkString.filter, isActionButton: false),
                      CategoriesPreferences(
                        titles: filters?.map((e) => e.name).toList() ?? [],
                        isSelected: (index) =>
                            state.selectedPreferences[filters![index].id] ??
                            false,
                        onTap: (index) {
                          final filterId = filters?[index].id ?? 0;
                          preferencesCubit.toggleSelectedPreference(filterId);
                        },
                      )
                    ],
                  ),

                  /// Fillter Categories Location
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: SparkSizes.spaceBtwItems,
                    children: [
                      SectionHeading(
                        text: SparkString.location,
                        onPressed: () {},
                      ),
                      CategoriesPreferences(
                        titles: locations?.map((e) => e.name).toList() ?? [],
                        isSelected: (index) =>
                            state.selectedPreferences[locations![index].id] ??
                            false,
                        onTap: (index) {
                          final locationsId = locations?[index].id ?? 0;
                          preferencesCubit
                              .toggleSelectedPreference(locationsId);
                        },
                      )
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SparkSizes.spaceBtwItems),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              SparkString.next,
              style: Theme.of(context).textTheme.titleMedium?.apply(
                    color: SparkColors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
