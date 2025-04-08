import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/common/widgets/spark_app_bar.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spacing.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/gen/assets.gen.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(showBackArrow: true),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: SparkSizes.defaultSpace),
        child: Column(
          spacing: 20.h,
          children: [
            SvgPicture.asset(Assets.images.confirmation),
            SvgPicture.asset(Assets.images.lightThinkSpark, width: 200.w),
            Text(
              SparkString.thanksForYourTimeTookForConfirmAndResetYourAccount,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            verticalSpace(20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () =>
                      context.pushNamed(Routes.splashConfirmScreen),
                  child: const Text(SparkString.continue_)),
            ),
          ],
        ),
      ),
    );
  }
}
