import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';

class ProfileSettingsModifications extends StatelessWidget {
  const ProfileSettingsModifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.spaceBtwItems,
      children: [
        CircularContainerShadow(
          icon: SettingsMenuTile(
            icon: Iconsax.password_check,
            title: SparkString.password,
            onTap: () => context.pushNamed(Routes.changePasswordScreen),
          ),
        ),
        CircularContainerShadow(
          icon: SettingsMenuTile(
            icon: Iconsax.message,
            title: SparkString.email,
            onTap: () => context.pushNamed(Routes.updateEmailScreen),
          ),
        ),
        CircularContainerShadow(
          icon: SettingsMenuTile(
            icon: Iconsax.finger_scan,
            title: SparkString.fingerPrintLock,
            onTap: () => context.pushNamed(Routes.biometricsScreen),
          ),
        ),
        CircularContainerShadow(
          icon: SettingsMenuTile(
            icon: Iconsax.star,
            title: SparkString.impression,
            onTap: () {},
          ),
        ),
        CircularContainerShadow(
          icon: SettingsMenuTile(
            isLogout: true,
            icon: Iconsax.logout_1,
            title: SparkString.logout,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
