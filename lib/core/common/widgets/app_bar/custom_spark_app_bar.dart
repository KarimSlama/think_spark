import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/notifications/notification_dot_icon.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class CustomSparkAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressed;
  const CustomSparkAppBar({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SparkAppBar(
      leadingIcon: Image.asset(Assets.images.logo.path),
      leadingOnPressed: onPressed,
      title: SvgPicture.asset(
        SparkHelperFunctions.isDark(context)
            ? Assets.images.darkThinkSpark
            : Assets.images.lightThinkSpark,
        width: 150.w,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(SparkSizes.xs),
          child: Row(
            spacing: 16.w,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircularContainerShadow(
                  icon: NotificationDotIcon(
                      onPressed: () => context.pushNamed(Routes.notificationScreen))),
              ProfileImageCircular(),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SparkSizes.appBarHeight);
}
