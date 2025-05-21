import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_bar_input_field.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/widget/latest_clue.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/widget/popular_investors.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/widget/drawer_side_navigation_menu.dart';
import 'package:think_spark/think_spark/screens/home/widget/title_with_subtitle.dart';

class CreativeHomeScreen extends StatelessWidget {
  const CreativeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ideasCubit = context.read<IdeasCubit>();
    return Row(
      children: [
        const DrawerSideNavigationMenu(),
        Expanded(
          child: FloatingWidget(
            mainScreenWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(SparkSizes.ms),
                      child: Column(
                        spacing: SparkSizes.spaceBtwItems,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ScreenTitleWithSubTitle(),
                          SparkBarInputField(
                              hintText: SparkString.searchForEverything,
                              onSendPressed: () => ideasCubit.searchIdeas(),
                              controller: ideasCubit.searchController),
                          const SectionHeading(
                              text: SparkString.latestClue,
                              isActionButton: false),
                          const LatestClue(),
                          const SectionHeading(
                              text: SparkString.popularUsers,
                              isActionButton: false),
                          const PopularInvestors()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
