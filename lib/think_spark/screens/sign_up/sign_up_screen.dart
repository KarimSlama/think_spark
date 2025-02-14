import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_tabs_bar.dart';
import 'package:think_spark/core/widgets/custom_header_widget.dart';
import 'package:think_spark/think_spark/screens/sign_up/widget/creative_sign_up_fields.dart';
import 'package:think_spark/think_spark/screens/sign_up/widget/investor_sign_up_fields%20copy.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            child: SingleChildScrollView(
              child: Column(
                spacing: 16.h,
                children: [
                  CustomHeaderWidget(
                      title: AppString.registration,
                      subTitl: AppString.letsRegisterInvestWithCreative),
                  ButtonTabsBar(
                      tabTitle1: AppString.creative,
                      tabTitle2: AppString.investor),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.45,
                    ),
                    child: TabBarView(
                      children: [
                        CreativeSignUpFields(),
                        InvestorSignUpFields(),
                      ],
                    ),
                  ),
                  TextButton(
                    child: Text(
                      AppString.haveAnAccount,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(decoration: TextDecoration.underline),
                    ),
                    onPressed: () {},
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 12.sp),
                          text: 'By continuing you agree',
                        ),
                        TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontSize: 12.sp, color: AppColors.blue),
                          text: ' Terms of Services & Privacy Policy ',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
