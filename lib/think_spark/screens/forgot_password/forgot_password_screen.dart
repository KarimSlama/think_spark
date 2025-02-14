import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_tabs_bar.dart';
import 'package:think_spark/core/widgets/button_widget.dart';
import 'package:think_spark/core/widgets/custom_header_widget.dart';
import 'package:think_spark/core/widgets/text_form_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(IconBroken.Arrow___Left_2)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
          child: DefaultTabController(
            length: 2,
            child: Column(
              spacing: 20.h,
              children: [
                CustomHeaderWidget(
                    title: AppString.forgotPassword,
                    subTitl: AppString.enterYourEmailOrPhoneToResetNewOne),
                ButtonTabsBar(
                    tabTitle1: AppString.email, tabTitle2: AppString.phone),
                SizedBox(
                  height: 200.h,
                  child: TabBarView(
                    children: [
                      Center(
                        child: Column(
                          spacing: 40.h,
                          children: [
                            Text(
                              AppString
                                  .enterYourPhoneAndWeWillSendYouVerificationCode,
                              textAlign: TextAlign.center,
                            ),
                            AppTextForm(
                                inputType: TextInputType.numberWithOptions(),
                                controller: TextEditingController(),
                                prefixIcon: IconBroken.Call,
                                label: AppString.phone)
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          spacing: 30.h,
                          children: [
                            Text(
                              AppString
                                  .enterYourEmailAndWeWillSendYouVerificationCode,
                              textAlign: TextAlign.center,
                            ),
                            AppTextForm(
                                inputType: TextInputType.emailAddress,
                                controller: TextEditingController(),
                                prefixIcon: IconBroken.Message,
                                label: AppString.email)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ButtonWidget(
                    onBackPressed: () {
                      context.pushNamed(Routes.verifyCodeScreen);
                    },
                    btnText: AppString.reset,
                    width: double.infinity)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
