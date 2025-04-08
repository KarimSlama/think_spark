import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/social_register/social_register.dart';
import 'package:think_spark/core/common/widgets/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/texts/divider_text.dart';
import 'package:think_spark/core/common/widgets/texts/span_text.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/widgets/custom_header_widget.dart';
import 'package:think_spark/think_spark/screens/login/widget/login_text_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: SparkSizes.defaultSpace),
          child: Column(
            spacing: 30.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomHeaderWidget(
                title: SparkString.welcomeBack,
                subTitl: SparkString.letsRegisterInvestInYourMind,
              ),
              LoginTextFormWidget(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(SparkString.login)),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.forgotPasswordScreen);
                  },
                  child: Text(
                    SparkString.forgotPassword,
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                        color: SparkHelperFunctions.isDark(context)
                            ? SparkColors.white
                            : SparkColors.darkBlue,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              SparkDividerWidget(dividerText: SparkString.orContinueWith),
              SocialRegister(),
              Center(
                child: SpanText(
                  text: SparkString.haveNotAnAccount,
                  actionText: SparkString.signUp,
                  actionTextOnTap: () => context.pushNamed(Routes.signUpScreen),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
