import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
import 'package:think_spark/core/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/widget/drawer_side_navigation_menu.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Row(
          children: [
            const DrawerSideNavigationMenu(),
            Expanded(
              child: FloatingWidget(
                mainScreenWidget: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: SparkSizes.ms),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: SparkSizes.spaceBtwItems),
                        SectionHeading(
                            text: SparkString.accounts, isActionButton: false),
                        SizedBox(height: SparkSizes.spaceBtwItems / 2),
                        // SettingsMenuTile(
                        //   icon: Iconsax.profile_tick,
                        //   title: SparkString.manageAccount,
                        //   onTap: () {},
                        // ),
                        SettingsMenuTile(
                          icon: Iconsax.security_time,
                          title: SparkString.privacyAndSecurity,
                          onTap: () => Constants.launchUrlLink(
                            Uri.parse(
                                'https://sites.google.com/view/thinksparkpolicy/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9'),
                          ),
                        ),
                        SettingsMenuTile(
                          icon: Iconsax.document,
                          title: SparkString.loginActivity,
                          onTap: () =>
                              context.pushNamed(Routes.loginActivityScreen),
                        ),
                        SizedBox(height: SparkSizes.spaceBtwSections),
                        SectionHeading(
                            text: SparkString.general, isActionButton: false),
                        SizedBox(height: SparkSizes.spaceBtwItems / 2),
                        SettingsMenuTile(
                          icon: Icons.translate,
                          title: SparkString.languages,
                          onTap: () {},
                        ),

                        SettingsMenuTile(
                          icon: Iconsax.security_time,
                          title: SparkString.darkMode,
                          trailing: Switch(
                            value: context.read<ProfileCubit>().isDark,
                            onChanged: (mode) =>
                                context.read<ProfileCubit>().changeMode(mode),
                            activeColor: SparkColors.white,
                            activeTrackColor: SparkColors.anakiwa,
                            trackOutlineColor: WidgetStateProperty.resolveWith(
                              (final Set<WidgetState> states) {
                                if (states.contains(WidgetState.selected)) {
                                  return null;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                        ),
                        // SettingsMenuTile(
                        //   icon: Iconsax.notification,
                        //   title: SparkString.notification,
                        //   trailing: Switch(
                        //     value: true,
                        //     onChanged: (value) {},
                        //     activeColor: SparkColors.white,
                        //     activeTrackColor: SparkColors.anakiwa,
                        //     trackOutlineColor: WidgetStateProperty.resolveWith(
                        //       (final Set<WidgetState> states) {
                        //         if (states.contains(WidgetState.selected)) {
                        //           return null;
                        //         }
                        //         return Colors.transparent;
                        //       },
                        //     ),
                        //   ),
                        // ),
                        SettingsMenuTile(
                          icon: Iconsax.hierarchy,
                          title: SparkString.shareProfile,
                          onTap: () {},
                        ),
                        SizedBox(height: SparkSizes.spaceBtwSections),
                        SectionHeading(
                            text: SparkString.additional,
                            isActionButton: false),
                        SizedBox(height: SparkSizes.spaceBtwItems / 2),
                        // SettingsMenuTile(
                        //   icon: Iconsax.arrow_swap_horizontal,
                        //   title: SparkString.switchAccount,
                        //   onTap: () {},
                        // ),
                        SettingsMenuTile(
                          icon: Iconsax.lock_1,
                          title: SparkString.closeAccount,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
