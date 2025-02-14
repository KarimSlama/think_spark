import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/spacing.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_widget.dart';
import 'package:think_spark/gen/assets.gen.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(IconBroken.Arrow___Left_2),
          onPressed: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
        child: Column(
          spacing: 20.h,
          children: [
            SvgPicture.asset(Assets.images.confirmation),
            SvgPicture.asset(Assets.images.thinkSpark),
            Text(
              AppString.thanksForYourTimeTookForConfirmAndResetYourAccount,
              textAlign: TextAlign.center,
            ),
            verticalSpace(20),
            ButtonWidget(
                onBackPressed: () {
                  context.pushNamed(Routes.splashConfirmScreen);
                },
                btnText: AppString.continue_,
                width: double.infinity)
          ],
        ),
      ),
    );
  }
}
