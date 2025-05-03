import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/think_spark/screens/login/controller/cubit/login_cubit.dart';

class LoginTextFormWidget extends StatelessWidget {
  const LoginTextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();

    return Column(
      spacing: 16.h,
      children: [
        SparkTextFormField(
          inputType: TextInputType.emailAddress,
          controller: loginCubit.emailController,
          prefixIcon: Iconsax.message,
          label: SparkString.email,
          validator: (value) => Validator.validateEmail(value),
        ),
        SparkTextFormField(
          inputType: TextInputType.visiblePassword,
          controller: loginCubit.passwordController,
          prefixIcon: Iconsax.password_check,
          suffixPressed: () => print('pressed'),
          suffixIcon: Iconsax.eye3,
          isObscureText: true,
          maxLines: 1,
          label: SparkString.password,
          validator: (value) => Validator.validatePassword(value),
        ),
      ],
    );
  }
}
