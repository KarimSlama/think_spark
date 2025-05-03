import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class EditProfileBlocListener extends StatelessWidget {
  const EditProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) => current != previous,
      listener: (context, state) {
        state.maybeWhen(
          success: (profile) {
            Loaders.successSnackBar(context: context, title: profile.message);
            Future.delayed(const Duration(milliseconds: 1500), () {
              context.pop();
            });
          },
          error: (error) => Text(error),
          orElse: () => Text('no data found'),
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
