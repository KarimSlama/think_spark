import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/think_spark/screens/reset_password/controller/reset_password_cubit.dart';

class PasswordFormFields extends StatelessWidget {
  const PasswordFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    final resetCubit = context.read<ResetPasswordCubit>();
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          vertical: SparkSizes.defaultSpace),
      child: Form(
        key: resetCubit.resetFormKey,
        child: Column(
          spacing: 16.h,
          children: [
            SparkTextFormField(
              inputType: TextInputType.visiblePassword,
              controller: resetCubit.newPasswordController,
              prefixIcon: Iconsax.password_check,
              suffixPressed: () {},
              suffixIcon: Iconsax.eye3,
              isObscureText: true,
              label: SparkString.password,
              validator: (value) => Validator.validatePassword(value),
            ),
            SparkTextFormField(
              inputType: TextInputType.visiblePassword,
              controller: resetCubit.confirmPasswordController,
              prefixIcon: Iconsax.password_check,
              suffixPressed: () {},
              suffixIcon: Iconsax.eye3,
              isObscureText: true,
              label: SparkString.confirmPassword,
              validator: (value) => Validator.validatePassword(value),
            ),
          ],
        ),
      ),
    );
  }
}
