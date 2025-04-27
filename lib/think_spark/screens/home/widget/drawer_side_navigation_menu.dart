import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_state.dart';

class DrawerSideNavigationMenu extends StatelessWidget {
  const DrawerSideNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: context.read<DrawerCubit>().isDrawerOpen ? 70 : 0,
          decoration: BoxDecoration(
              color: SparkHelperFunctions.isDark(context)
                  ? SparkColors.black
                  : SparkColors.light.withValues(alpha: .1),
              borderRadius: BorderRadiusDirectional.circular(35)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              spacing: 14.h,
              children: [
                ProfileImageCircular(width: 50.w, height: 50.h),
                CircularContainerShadow(
                  icon: IconButton(
                    icon: Icon(Iconsax.calendar, color: SparkColors.doggerBlue),
                    onPressed: () {},
                  ),
                ),
                CircularContainerShadow(
                  icon: IconButton(
                    icon: Icon(Iconsax.message, color: SparkColors.doggerBlue),
                    onPressed: () {},
                  ),
                ),
                CircularContainerShadow(
                  icon: IconButton(
                    icon: Icon(Iconsax.lamp_on, color: SparkColors.doggerBlue),
                    onPressed: () {},
                  ),
                ),
                CircularContainerShadow(
                  icon: IconButton(
                    icon: Icon(Iconsax.finger_scan,
                        color: SparkColors.doggerBlue),
                    onPressed: () {},
                  ),
                ),
                CircularContainerShadow(
                  icon: IconButton(
                    icon: Icon(Iconsax.trash, color: SparkColors.doggerBlue),
                    onPressed: () {},
                  ),
                ),
                Spacer(),
                CircularContainerShadow(
                  icon: IconButton(
                    icon: Icon(Iconsax.logout_1, color: SparkColors.red),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
