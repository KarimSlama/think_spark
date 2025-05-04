import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/think_spark/screens/change_password/widget/change_password_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';

class EmailInputStep1 extends StatelessWidget {
  final Function(int) onIndexChanged;
  final int index;
  const EmailInputStep1({
    super.key,
    required this.onIndexChanged,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Form(
        key: cubit.forgotFormKey,
        child: Column(
          spacing: SparkSizes.defaultSpace,
          children: [
            Text(
              SparkString
                  .enterYourEmailToEnsureAndConfirmThatYouWantToNewPasswordNow,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            SparkTextFormField(
              inputType: TextInputType.emailAddress,
              controller: cubit.emailController,
              prefixIcon: Iconsax.sms_tracking,
              label: SparkString.email,
              validator: (value) => Validator.validateEmail(value),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (cubit.forgotFormKey.currentState!.validate()) {
                      cubit.addForgotPasswordIdentifier(1);
                    }
                  },
                  child: const Text(SparkString.confirm)),
            ),
            ChangePasswordBlocListener(
                onIndexChanged: onIndexChanged, index: index),
          ],
        ),
      ),
    );
  }
}