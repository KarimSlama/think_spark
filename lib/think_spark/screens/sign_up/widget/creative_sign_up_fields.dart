import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_widget.dart';
import 'package:think_spark/core/widgets/text_form_widget.dart';

class CreativeSignUpFields extends StatelessWidget {
  const CreativeSignUpFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 17.h,
      children: [
        AppTextForm(
            inputType: TextInputType.text,
            controller: TextEditingController(),
            prefixIcon: IconBroken.User,
            label: AppString.fullName),
        AppTextForm(
            inputType: TextInputType.emailAddress,
            controller: TextEditingController(),
            prefixIcon: IconBroken.Message,
            label: AppString.email),
        AppTextForm(
            inputType: TextInputType.visiblePassword,
            controller: TextEditingController(),
            label: AppString.password,
            suffixIcon: IconBroken.Show,
            prefixIcon: IconBroken.Lock,
            isObscureText: true,
            suffixPressed: () {}),
        ButtonWidget(
            onBackPressed: () {
              // context.pushNamed(Routes.verifyCodeScreen);
            },
            btnText: AppString.signUp,
            width: double.infinity),
      ],
    );
  }
}
