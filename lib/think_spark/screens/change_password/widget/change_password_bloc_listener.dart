import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_cubit.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_state.dart';

class ChangePasswordBlocListener extends StatelessWidget {
  final Function(int) onIndexChanged;
  final int index;
  const ChangePasswordBlocListener(
      {super.key, required this.onIndexChanged, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => Center(
              child: SpinKitSquareCircle(color: SparkColors.blue),
            ),
          ),
          success: (response) {
            context.pop();
            Loaders.successSnackBar(
              context: context,
              title: 'Success',
              message: response.message,
            );
            if (index == 2) {
              context.pushNamedAndRemoveUntil(
                Routes.loginScreen,
                predicate: (route) => route.settings.name != Routes.loginScreen,
              );
            } else {
              onIndexChanged(index + 1);
            }
          },
          failure: (error) {
            context.pop();
            Loaders.showBlurredErrorDialog(
              context: context,
              message: error,
              blurColor: SparkHelperFunctions.isDark(context)
                  ? SparkColors.black
                  : SparkColors.light,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
