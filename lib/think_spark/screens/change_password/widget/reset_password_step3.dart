import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/inputs/password_form_fields.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/change_password/widget/change_password_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';

class ResetPasswordStep3 extends StatelessWidget {
  final Function(int) onIndexChanged;
  final int index;
  const ResetPasswordStep3({
    super.key,
    required this.onIndexChanged,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Column(
        spacing: SparkSizes.defaultSpace,
        children: [
          Text(
            SparkString.enterNewPasswordAndMakeTwoMatchEachOther,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          PasswordFormFields(
              newPasswordController: cubit.newPasswordController,
              confirmPasswordController: cubit.confirmPasswordController,
              resetFormKey: cubit.resetFormKey),
          SizedBox(
            width: double.infinity,
            child: Builder(builder: (tabContext) {
              return ElevatedButton(
                  onPressed: () {
                    if (cubit.resetFormKey.currentState!.validate()) {
                      cubit.resetPassword();
                    }
                  },
                  child: const Text(SparkString.confirm));
            }),
          ),
          ChangePasswordBlocListener(
              onIndexChanged: onIndexChanged, index: index),
        ],
      ),
    );
  }
}
