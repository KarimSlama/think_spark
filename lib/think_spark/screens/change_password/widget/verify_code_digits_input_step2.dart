import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/inputs/verify_code_digits_inputs.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/change_password/widget/change_password_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';

class VerifyCodeDigitsInputStep2 extends StatelessWidget {
  final Function(int) onIndexChanged;
  final int index;

  const VerifyCodeDigitsInputStep2(
      {super.key, required this.onIndexChanged, required this.index});

  @override
  Widget build(BuildContext context) {
    final codeCubit = context.read<ForgotPasswordCubit>();
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Column(
        spacing: SparkSizes.defaultSpace,
        children: [
          Text(
            SparkString
                .checkYourEmailThatYouveEnteredAndFillDownWithTheCodeSentToYou,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          VerifyCodeDigitsInput(
              codeFormKey: codeCubit.codeFormKey,
              codeControllers: codeCubit.codeControllers),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if(codeCubit.codeFormKey.currentState!.validate()){
                  codeCubit.verifyCode();
                }
              },
              child: const Text(SparkString.confirm),
            ),
          ),
           ChangePasswordBlocListener(
                onIndexChanged: onIndexChanged, index: index),
        ],
      ),
    );
  }
}
