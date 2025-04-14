import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/app_bar/custom_spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/search_box/spark_search_bar_field.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/home_cubit.dart';
import 'package:think_spark/think_spark/screens/home/widget/ideas_list_cards.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingDraggableWidget(
          mainScreenWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSparkAppBar(),
              Flexible(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(SparkSizes.ms),
                    child: Column(
                      spacing: SparkSizes.spaceBtwItems,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${SparkString.hey} Karim👋',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: SparkColors.darkGrey),
                        ),
                        Text(
                          SparkString.creativityEffortlesslyCommunication,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontSize: 20.sp),
                        ),
                        SparkSearchBarField(),
                        SectionHeading(
                          text: SparkString.popularClue,
                          onPressed: () => context.pushNamed(
                              Routes.allIdeasScreen,
                              arguments: context.read<HomeCubit>().ideasList),
                        ),
                        IdeasListCards(),
                        SectionHeading(
                            text: SparkString.popularUsers, onPressed: () {}),
                        PopularUser(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingWidget: GestureDetector(
            onTap: (){
              print('floating tapped');
          },
            child: CircularContainerShadow(
              icon: Icon(Iconsax.messages_2, color: SparkColors.doggerBlue),
              padding: SparkSizes.md,
            ),
          ),
          floatingWidgetWidth: 60,
          floatingWidgetHeight: 60),
    );
  }
}
