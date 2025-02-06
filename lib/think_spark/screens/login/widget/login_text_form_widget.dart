import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';
import 'package:think_spark/core/widgets/text_form_widget.dart';

class LoginTextFormWidget extends StatelessWidget {
  const LoginTextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Column(
      spacing: 20.h,
      children: [
        AppTextForm(
          inputType: TextInputType.text,
          controller: emailController,
          label: AppString.email_address,
          prefixIcon: IconBroken.Message,

        ),
        AppTextForm(
            inputType: TextInputType.visiblePassword,
            controller: passwordController,
            label: AppString.password,
            suffixIcon: IconBroken.Show,
            prefixIcon: IconBroken.Lock,
            isObscureText: true,
            suffixPressed: () {}),
      ],
    );
  }
}
