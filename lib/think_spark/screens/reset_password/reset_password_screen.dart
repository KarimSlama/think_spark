import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:think_spark/core/common/widgets/spark_app_bar.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/reset_password/controller/reset_password_cubit.dart';
import 'package:think_spark/think_spark/screens/reset_password/reset_password_bloc_listener.dart';
import 'package:think_spark/think_spark/screens/reset_password/widget/password_form_fields.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SparkHelperFunctions.isDark(context);

    return Scaffold(
      appBar: SparkAppBar(showBackArrow: true),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: SparkSizes.defaultSpace),
            child: Column(
              spacing: 16.h,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                    dark
                        ? Assets.images.darkThinkSpark
                        : Assets.images.lightThinkSpark,
                    width: 200.w),
                Text(
                  SparkString.resetYourPassword,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                PasswordFormFields(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        final resetCubit = context.read<ResetPasswordCubit>();
                        if (resetCubit.resetFormKey.currentState!.validate()) {
                          resetCubit.resetPassword();
                        } else {
                          return;
                        }
                      },
                      child: const Text(SparkString.save)),
                ),
                ResetPasswordBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
