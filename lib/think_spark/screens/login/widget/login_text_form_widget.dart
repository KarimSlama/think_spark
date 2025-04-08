import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';

class LoginTextFormWidget extends StatelessWidget {
  const LoginTextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Column(
      spacing: 16.h,
      children: [
        SparkTextFormField(
          inputType: TextInputType.emailAddress,
          controller: emailController,
          prefixIcon: Iconsax.message,
          label: SparkString.email,
          validator: (value) => Validator.validateEmail(value),
        ),
        SparkTextFormField(
          inputType: TextInputType.visiblePassword,
          controller: passwordController,
          prefixIcon: Iconsax.password_check,
          suffixPressed: () => print('pressed'),
          suffixIcon: Iconsax.eye3,
          isObscureText: true,
          label: SparkString.password,
          validator: (value) => Validator.validatePassword(value),
        ),
      ],
    );
  }
}
