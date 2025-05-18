import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_bar_input_field.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/widget/drawer_side_navigation_menu.dart';
import 'package:think_spark/think_spark/screens/home/widget/ideas_list_cards.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';
import 'package:think_spark/think_spark/screens/home/widget/title_with_subtitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                          ScreenTitleWithSubTitle(),
                          SparkBarInputField(
                              controller: TextEditingController(),
                              hintText: SparkString.searchForCreativeIdea),
                          SectionHeading(
                            text: SparkString.popularClue,
                            onPressed: () => context.pushNamed(
                                Routes.allIdeasScreen,
                                arguments:
                                    context.read<IdeasCubit>().ideasList),
                          ),
                          IdeasListCards(),
                          SectionHeading(
                              text: SparkString.popularUsers, onPressed: () {}),
                          PopularUser(
                            name: 'Karim Slama',
                            text: 'Software Developer',
                            showMoreIcon: true,
                            onPressed: () {},
                          ),
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
