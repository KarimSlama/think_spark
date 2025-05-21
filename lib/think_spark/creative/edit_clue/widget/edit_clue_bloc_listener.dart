import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';

class EditClueBlocListener extends StatelessWidget {
  const EditClueBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<IdeasCubit, IdeasState>(
      listenWhen: (previous, current) =>
          current is Loading || current is UpdateSuccess || current is Error,
      listener: (context, state) {
        state.maybeWhen(
          loading: () => CircularProgressIndicator(),
          updateSuccess: (data) {
            Loaders.sparkToast(message: 'Success');
            // Navigate back to creative home screen
            Navigator.of(context).pop();
          },
          error: (error) => Loaders.errorSnackBar(
              title: 'Error', message: error, context: context),
          orElse: () => SizedBox(),
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
