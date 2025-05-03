import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/floating_widget.dart';
import 'package:think_spark/core/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/widget/drawer_side_navigation_menu.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    SettingsMenuTile(
                      icon: Iconsax.profile_tick,
                      title: SparkString.manageAccount,
                      onTap: () {},
                    ),
                    SettingsMenuTile(
                      icon: Iconsax.security_time,
                      title: SparkString.privacyAndSecurity,
                      onTap: () {},
                    ),
                    SettingsMenuTile(
                      icon: Iconsax.document,
                      title: SparkString.loginActivity,
                      onTap: () {},
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
                        value: true,
                        onChanged: (value) {},
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
                    SettingsMenuTile(
                      icon: Iconsax.notification,
                      title: SparkString.notification,
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
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
                    SettingsMenuTile(
                      icon: Iconsax.hierarchy,
                      title: SparkString.shareProfile,
                      onTap: () {},
                    ),
                    SizedBox(height: SparkSizes.spaceBtwSections),
                    SectionHeading(
                        text: SparkString.additional, isActionButton: false),
                    SizedBox(height: SparkSizes.spaceBtwItems / 2),
                    SettingsMenuTile(
                      icon: Iconsax.arrow_swap_horizontal,
                      title: SparkString.switchAccount,
                      onTap: () {},
                    ),
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
  }
}
