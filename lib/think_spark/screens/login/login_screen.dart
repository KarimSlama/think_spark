import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_widget.dart';
import 'package:think_spark/core/widgets/continue_with_widget.dart';
import 'package:think_spark/core/widgets/custom_header_widget.dart';
import 'package:think_spark/think_spark/screens/login/widget/login_text_form_widget.dart';
import 'package:think_spark/think_spark/screens/sign_options/widget/social_register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          child: Column(
            spacing: 30.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomHeaderWidget(
                title: AppString.welcomeBack,
                subTitl: AppString.letsRegisterInvestInYourMind,
              ),
              LoginTextFormWidget(),
              ButtonWidget(
                onBackPressed: () {
                  context.pushNamed(Routes.loginScreen);
                },
                btnText: AppString.login,
                width: double.infinity,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.forgotPasswordScreen);
                    },
                    child: Text(
                      AppString.forgotPassword,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.doggerBlue,
                          ),
                    )),
              ),
              ContinueWithWidget(),
              SocialRegister(),
              Align(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.signUpScreen);
                  },
                  child: Text(
                    AppString.haveNotAnAccount,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
