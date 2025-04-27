import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:think_spark/core/common/widgets/headers/primary_header_widget.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/change_password/widget/email_input_step1.dart';
import 'package:think_spark/think_spark/screens/change_password/widget/reset_password_step3.dart';
import 'package:think_spark/think_spark/screens/change_password/widget/verify_code_digits_input_step2.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderWidget(
              title: SparkString.changePassword,
              child: SizedBox(),
            ),
            SvgPicture.asset(
              SparkHelperFunctions.isDark(context)
                  ? Assets.images.darkThinkSpark
                  : Assets.images.lightThinkSpark,
            ),
            EasyStepper(
              activeStep: activeStep,
              steps: [
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 0 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Exist Email',
                ),
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 1 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Verify Code',
                  topTitle: true,
                ),
                EasyStep(
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor:
                          activeStep >= 3 ? Colors.orange : Colors.white,
                    ),
                  ),
                  title: 'Verify New Password',
                  topTitle: true,
                ),
              ],
            ),
            if (activeStep == 0)
              EmailInputStep1(
                onIndexChanged: (index) => setState(
                  () {
                    activeStep = index;
                  },
                ),
                index: activeStep,
              ),
            if (activeStep == 1)
              VerifyCodeDigitsInputStep2(
                onIndexChanged: (index) => setState(() {
                  activeStep = index;
                }),
                index: activeStep,
              ),
            if (activeStep == 2)
              ResetPasswordStep3(
                onIndexChanged: (index) => setState(() {
                  activeStep = index;
                }),
                index: activeStep,
              ),
          ],
        ),
      ),
    );
  }
}
