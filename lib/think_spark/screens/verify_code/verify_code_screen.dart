import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:think_spark/core/common/widgets/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/constants/spacing.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/core/validation/validator.dart';
import 'package:think_spark/gen/assets.gen.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    4,
                    (index) {
                      return SizedBox(
                        width: 60.w,
                        child: SparkTextFormField(
                          inputType: TextInputType.number,
                          controller: TextEditingController(),
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) => Validator.validateEmptyText(
                              value, 'Verification Code'),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          // fillColor: SparkColors.orange,
                          borderColor:
                              dark ? SparkColors.silver : SparkColors.light,
                        ),
                      );
                    },
                  ),
                ],
              ),
              verticalSpace(40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>
                        context.pushNamed(Routes.resetPasswordScreen),
                    child: const Text(SparkString.verify)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
