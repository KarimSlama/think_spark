import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/common/widgets/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spacing.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/verify_code/controller/code_cubit.dart';
import 'package:think_spark/think_spark/screens/verify_code/verify_code_bloc_listener.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);
    final codeCubit = context.read<CodeCubit>();

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
              Form(
                key: codeCubit.codeFormKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      4,
                      (index) {
                        return SizedBox(
                          width: 60.w,
                          child: SparkTextFormField(
                            inputType: TextInputType.number,
                            controller: codeCubit.codeControllers[index],
                            textAlign: TextAlign.center,
                            autofillHints: const [AutofillHints.oneTimeCode],
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            validator: (value) => Validator.validateEmptyText(
                                value, 'Verification Code'),
                            onChanged: (value) {
                              if (value.length == 1) {
                                if (index < 3) {
                                  FocusScope.of(context).nextFocus();
                                }
                              } else if (value.isEmpty) {
                                if (index > 0) {
                                  FocusScope.of(context).previousFocus();
                                }
                              }
                            },
                            borderColor:
                                dark ? SparkColors.silver : SparkColors.light,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
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
