import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';

class SparkAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const SparkAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => context.pop(),
              icon: Icon(
                Iconsax.arrow_left_24,
                color: SparkHelperFunctions.isDark(context)
                    ? SparkColors.white
                    : SparkColors.black,
              ))
          : leadingIcon != null
              ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(
                    leadingIcon,
                    color: SparkHelperFunctions.isDark(context)
                        ? SparkColors.white
                        : SparkColors.black,
                  ))
              : null,
      actions: actions,
      title: title,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SparkSizes.appBarHeight);
}
