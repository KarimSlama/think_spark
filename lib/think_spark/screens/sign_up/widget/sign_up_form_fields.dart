import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';

class SignUpFormFields extends StatelessWidget {
  final bool isInvestor;
  const SignUpFormFields({super.key, required this.isInvestor});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<RegisterCubit>();

    return Form(
      key: isInvestor ? cubit.investorFormKey : cubit.creativeFormKey,
      child: Column(
        spacing: 17.h,
        children: [
          SparkTextFormField(
            autofillHints: [AutofillHints.username],
            inputType: TextInputType.text,
            controller: cubit.nameController,
            prefixIcon: isInvestor ? Iconsax.dcube : Iconsax.frame_1,
            label: isInvestor ? SparkString.busniessName : SparkString.fullName,
            validator: (value) => Validator.validateEmptyText(
                value, isInvestor ? 'Busniess Name' : 'Full Name'),
          ),
          SparkTextFormField(
            autofillHints: [AutofillHints.email],
            inputType: TextInputType.emailAddress,
            controller: cubit.emailController,
            prefixIcon: Iconsax.sms_tracking,
            label: SparkString.email,
            validator: (value) => Validator.validateEmail(value),
          ),
          IntlPhoneField(
            controller: cubit.phoneController,
            validator: (value) => Validator.validatePhone(value.toString()),
            decoration: InputDecoration(
              labelText: SparkString.phone,
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'EG',
            onChanged: (phone) {
              cubit.countryCode = phone.countryCode;
              cubit.phoneController.text = phone.number;
            },
            onCountryChanged: (country) {
              cubit.countryCode = '+${country.dialCode}';
            },
          ),
          SparkTextFormField(
            inputType: TextInputType.visiblePassword,
            controller: cubit.passwordController,
            prefixIcon: Iconsax.password_check,
            suffixPressed: () {
              cubit.changePasswordIcon();
            },
            suffixIcon: cubit.isPassword ? Iconsax.eye3 : Iconsax.eye_slash,
            maxLines: 1,
            isObscureText: cubit.isPassword,
            label: SparkString.password,
            validator: (value) => Validator.validatePassword(value),
          ),
        ],
      ),
    );
  }
}
