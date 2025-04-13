import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/texts/span_text.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/widgets/button_tabs_bar.dart';
import 'package:think_spark/core/widgets/custom_header_widget.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';
import 'package:think_spark/think_spark/screens/sign_up/widget/register_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/sign_up/widget/sign_up_form_fields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(showBackArrow: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: SparkSizes.defaultSpace.w,
          ),
          child: DefaultTabController(
            length: 2,
            child: Column(
              spacing: 16.h,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeaderWidget(
                  title: SparkString.registration,
                  subTitl: SparkString.letsRegisterInvestWithCreative,
                ),
                ButtonTabsBar(
                  tabTitle1: SparkString.creative,
                  tabTitle2: SparkString.investor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .43,
                  child: TabBarView(
                    children: [
                      SignUpFormFields(isInvestor: false),
                      SignUpFormFields(isInvestor: true),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Builder(
                    builder: (tabContext) => ElevatedButton(
                      onPressed: () {
                        final tabIndex =
                            DefaultTabController.of(tabContext).index;
                        validateThenDoRegister(tabContext, tabIndex);
                      },
                      child: Text(
                        SparkString.save,
                        style: Theme.of(context).textTheme.bodyLarge?.apply(
                              color: SparkColors.light,
                            ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SparkSizes.spaceBtwItems.h / 3),
                Column(
                  spacing: 8.h,
                  children: [
                    SpanText(
                      text: SparkString.haveAnAccount,
                      actionText: SparkString.login,
                      actionTextOnTap: () =>
                          context.pushNamed(Routes.loginScreen),
                    ),
                    SpanText(
                      text: SparkString.byContinuingYouAgree,
                      actionText: SparkString.termsOfServicesPrivacyPolicy,
                      actionTextOnTap: () =>
                          context.pushNamed(Routes.loginScreen),
                      isSmall: true,
                    ),
                  ],
                ),
                RegisterBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoRegister(BuildContext context, int index) {
  final cubit = context.read<RegisterCubit>();

  final isValid = index == 0
      ? cubit.creativeFormKey.currentState!.validate()
      : cubit.investorFormKey.currentState!.validate();

  if (isValid) {
    cubit.createNewUser(index);
  }
}
