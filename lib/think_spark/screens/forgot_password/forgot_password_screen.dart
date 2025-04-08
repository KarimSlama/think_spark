import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/core/widgets/button_tabs_bar.dart';
import 'package:think_spark/core/widgets/custom_header_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: SparkSizes.defaultSpace),
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20.h,
              children: [
                CustomHeaderWidget(
                    title: SparkString.forgotPassword,
                    subTitl: SparkString.enterYourEmailOrPhoneToResetNewOne),
                ButtonTabsBar(
                    tabTitle1: SparkString.phone, tabTitle2: SparkString.email),
                SizedBox(
                  height: 200.h,
                  child: TabBarView(
                    children: [
                      Center(
                        child: Column(
                          spacing: 40.h,
                          children: [
                            Text(
                              SparkString
                                  .enterYourPhoneAndWeWillSendYouVerificationCode,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.center,
                            ),
                            SparkTextFormField(
                              inputType: TextInputType.phone,
                              controller: TextEditingController(),
                              prefixIcon: Iconsax.call,
                              label: SparkString.phone,
                              validator: (value) =>
                                  Validator.validatePhone(value),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          spacing: 30.h,
                          children: [
                            Text(
                              SparkString
                                  .enterYourEmailAndWeWillSendYouVerificationCode,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.center,
                            ),
                            SparkTextFormField(
                              inputType: TextInputType.emailAddress,
                              controller: TextEditingController(),
                              prefixIcon: Iconsax.sms_tracking,
                              label: SparkString.email,
                              validator: (value) =>
                                  Validator.validateEmail(value),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          context.pushNamed(Routes.verifyCodeScreen),
                      child: const Text(SparkString.reset)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
