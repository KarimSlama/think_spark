import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_cubit.dart';
import 'package:think_spark/think_spark/screens/creative_navigation_menu/controller/cubit/creative_navigation_state.dart';

class CreativeCustomBottomNavBar extends StatelessWidget {
  final Function(int index)? onTap;

  const CreativeCustomBottomNavBar({
    super.key,
    required this.onTap,
  });

  final List<IconData> icons = const [
    Iconsax.home,
    Iconsax.document_upload,
    Iconsax.setting_2,
  ];

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);
    return BlocSelector<CreativeNavigationCubit, CreativeNavigationState, int>(
      selector: (state) => state is NavigationChanged ? state.index : 0,
      builder: (context, currentInex) {
        return CircularContainer(
          padding: SparkSizes.ms,
          color: Colors.transparent,
          radius: SparkSizes.borderRadiusXl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(icons.length, (index) {
              final isSelected = currentInex == index;
              return GestureDetector(
                onTap: () => onTap?.call(index),
                child: Column(
                  spacing: isSelected ? 8.h : 0,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularContainerShadow(
                        widget: Icon(
                          icons[index],
                          color: isSelected
                              ? (dark
                                  ? SparkColors.doggerBlue
                                  : SparkColors.doggerBlue)
                              : SparkColors.onahau,
                        ),
                        padding: SparkSizes.md,
                        isSelected: isSelected),
                    if (isSelected)
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: SparkSizes.sm),
                        width: 10.w,
                        height: 10.h,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      )
                    else
                      const SizedBox(height: 1),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
