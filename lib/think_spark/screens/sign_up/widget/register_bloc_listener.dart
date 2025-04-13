import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_cubit.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => Center(
              child: SpinKitSquareCircle(
                color: SparkColors.blue,
              ),
            ),
          ),
          success: (registerResponse) async {
            context.pop();
            Loaders.successSnackBar(
              context: context,
              title: 'Success',
              message: registerResponse.message,
            );
            await SharedPreference.setSecureString(
              Constants.userTokenKey,
              registerResponse.user.token,
            ).then((_) async{
              await SharedPreference.setSecureString(
                Constants.refreshTokenKey,
                registerResponse.user.refresh,
              );
              context.pushNamedAndRemoveUntil(Routes.categoryPreferencesScreen,
                  predicate: (Route<dynamic> route) {
                return false;
              });
            });
          },
          error: (error) {
            context.pop();
            Loaders.showBlurredErrorDialog(
              context: context,
              message: error?.entries
                      .map((e) => '${e.key}: ${e.value?.join(', ')}')
                      .join('\n') ??
                  'An unknown error occurred',
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
