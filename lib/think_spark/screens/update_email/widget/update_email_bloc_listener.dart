import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:think_spark/core/common/widgets/loaders/full_screen_loader.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class UpdateEmailBlocListener extends StatelessWidget {
  const UpdateEmailBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (prev, current) => current is! StepChanged,
      listener: (context, state) {
        state.maybeWhen(
          loading: () => FullScreenLoader.openLoadingDialog(
              'We are Proccessing your Updating....',
              SpinKitFadingCircle(),
              context),
          success: (profile) {
            Loaders.successSnackBar(context: context, title: profile.message);
            context.pop();
            context.read<ProfileCubit>().emailController.clear();
            context.read<ProfileCubit>().newEmailController.clear();
            context.read<ProfileCubit>().emailUpdateStep = 0;

          },
          error: (error) =>
              Loaders.errorSnackBar(context: context, title: error),
          orElse: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}