import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';

class PasswordFormFields extends StatelessWidget {
  const PasswordFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          vertical: SparkSizes.defaultSpace),
      child: Column(
        spacing: 16.h,
        children: [
          SparkTextFormField(
            inputType: TextInputType.visiblePassword,
            controller: TextEditingController(),
            prefixIcon: Iconsax.password_check,
            suffixPressed: () {},
            suffixIcon: Iconsax.eye3,
            isObscureText: true,
            label: SparkString.password,
            validator: (value) => Validator.validatePassword(value),
          ),
          SparkTextFormField(
            inputType: TextInputType.visiblePassword,
            controller: TextEditingController(),
            prefixIcon: Iconsax.password_check,
            suffixPressed: () {},
            suffixIcon: Iconsax.eye3,
            isObscureText: true,
            label: SparkString.confirmPassword,
            validator: (value) => Validator.validatePassword(value),
          ),
        ],
      ),
    );
  }
}
