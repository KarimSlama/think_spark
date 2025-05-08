import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class SettingsMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool isLogout;

  const SettingsMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      this.trailing,
      this.onTap,
      this.isLogout = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: CircularContainerShadow(
            padding: 7,
            widget: Icon(icon,
                color: isLogout ? SparkColors.red : SparkColors.doggerBlue)),
        title: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(color: SparkColors.light)),
        trailing: trailing ?? Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
