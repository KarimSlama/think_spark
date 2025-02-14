import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/spacing.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/button_widget.dart';
import 'package:think_spark/core/widgets/text_form_widget.dart';
import 'package:think_spark/gen/assets.gen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(IconBroken.Arrow___Left_2),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
          child: Column(
            spacing: 26.h,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.images.thinkSpark),
              Text(
                AppString.resetYourPassword,
                textAlign: TextAlign.center,
              ),
              AppTextForm(
                  inputType: TextInputType.text,
                  controller: TextEditingController(),
                  prefixIcon: IconBroken.Lock,
                  suffixIcon: IconBroken.Show,
                  hint: AppString.password,
                  label: AppString.password),
              AppTextForm(
                  inputType: TextInputType.text,
                  controller: TextEditingController(),
                  prefixIcon: IconBroken.Lock,
                  suffixIcon: IconBroken.Show,
                  hint: AppString.confirmPassword,
                  label: AppString.confirmPassword),
              verticalSpace(20),
              ButtonWidget(
                  onBackPressed: () {
                    context.pushNamed(Routes.confirmationScreen);
                  },
                  btnText: AppString.save,
                  width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
