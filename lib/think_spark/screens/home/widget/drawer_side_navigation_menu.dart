import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_state.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';

class DrawerSideNavigationMenu extends StatelessWidget {
  const DrawerSideNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: context.read<DrawerCubit>().isDrawerOpen ? 70.w : 0,
          decoration: BoxDecoration(
              color: SparkHelperFunctions.isDark(context)
                  ? SparkColors.black
                  : SparkColors.light.withValues(alpha: .1),
              borderRadius: BorderRadiusDirectional.circular(35.r)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: SparkSizes.ms),
            child: Column(
              spacing: 14.h,
              children: [
                ProfileImageCircular(width: 50.w, height: 50.h),
                CircularContainerShadow(
                  widget: IconButton(
                    icon: Icon(Iconsax.calendar, color: SparkColors.doggerBlue),
                    onPressed: () =>
                        context.pushNamed(Routes.allMeetingsScreen),
                  ),
                ),
                CircularContainerShadow(
                  widget: IconButton(
                    icon: Icon(Iconsax.message, color: SparkColors.doggerBlue),
                    onPressed: () => context.pushNamed(Routes.chatScreen),
                  ),
                ),
                CircularContainerShadow(
                  widget: IconButton(
                    icon: Icon(
                        context.read<ProfileCubit>().isDark
                            ? Iconsax.lamp_on5
                            : Iconsax.lamp_on,
                        color: SparkColors.doggerBlue),
                    onPressed: () => context
                        .read<ProfileCubit>()
                        .changeMode(!context.read<ProfileCubit>().isDark),
                  ),
                ),
                CircularContainerShadow(
                  widget: IconButton(
                    icon: Icon(Iconsax.finger_scan,
                        color: SparkColors.doggerBlue),
                    onPressed: () {},
                  ),
                ),
                // CircularContainerShadow(
                //   widget: IconButton(
                //     icon: Icon(Iconsax.trash, color: SparkColors.doggerBlue),
                //     onPressed: () {},
                //   ),
                // ),
                Spacer(),
                CircularContainerShadow(
                  widget: IconButton(
                      icon: Icon(Iconsax.logout_1, color: SparkColors.red),
                      onPressed: () {
                        context.read<DrawerCubit>().logout(context);
                        context.pushNamedAndRemoveUntil(Routes.loginScreen,
                            predicate: (route) =>
                                route.settings.name == Routes.loginScreen);
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
