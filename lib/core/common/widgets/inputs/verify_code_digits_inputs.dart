import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/spark_text_form_field.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/validation/validator.dart';

class VerifyCodeDigitsInput extends StatelessWidget {
  final Key codeFormKey;
  final List<TextEditingController> codeControllers;

  const VerifyCodeDigitsInput({
    super.key,
    required this.codeFormKey,
    required this.codeControllers,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: codeFormKey,
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
                  controller: codeControllers[index],
                  textAlign: TextAlign.center,
                  autofillHints: const [AutofillHints.oneTimeCode],
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) =>
                      Validator.validateEmptyText(value, 'Verification Code'),
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
                  borderColor: SparkHelperFunctions.isDark(context)
                      ? SparkColors.silver
                      : SparkColors.light,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
