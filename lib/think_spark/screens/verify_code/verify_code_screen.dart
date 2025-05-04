import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/inputs/verify_code_digits_inputs.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spacing.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';
import 'package:think_spark/think_spark/screens/verify_code/verify_code_bloc_listener.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);
    final codeCubit = context.read<ForgotPasswordCubit>();

    return Scaffold(
      appBar: SparkAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
          child: Column(
            spacing: 26.h,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(dark
                  ? Assets.images.darkThinkSpark
                  : Assets.images.lightThinkSpark),
              Text(SparkString.verifyCode,
                  style: Theme.of(context).textTheme.headlineMedium!.apply(
                        fontWeightDelta: 4,
                      )),
              Text(
                SparkString
                    .enterYourVerificationCodeFromYourEmailOrPhoneNumberThatWeHaveSent,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              VerifyCodeDigitsInput(
                  codeFormKey: codeCubit.codeFormKey,
                  codeControllers: codeCubit.codeControllers),
              verticalSpace(40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (codeCubit.codeFormKey.currentState!.validate()) {
                        codeCubit.verifyCode();
                      }
                    },
                    child: const Text(SparkString.verify)),
              ),
              VerifyCodeBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
