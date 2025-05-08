import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_cubit.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_state.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_request_body.dart';

class ScheduleMeetingButton extends StatelessWidget {
  final IdeaResponse ideaResponse;
  final DateTime? selectedTime;

  const ScheduleMeetingButton({
    super.key,
    required this.ideaResponse,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleMeetingCubit, ScheduleMeetingState>(
      listener: (context, state) {
        if (state is ScheduleMeetingSuccess) {
          Loaders.successSnackBar(
              context: context, title: state.response.message);
          context.pop();
        }
        if (state is ScheduleMeetingError) {
          Loaders.errorSnackBar(context: context, title: state.error);
        }
      },
      builder: (context, state) {
        if (state is ScheduleMeetingLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: SparkSizes.spaceBtwItems,
                vertical: SparkSizes.md),
            child: ElevatedButton(
              onPressed: () {
                if (selectedTime == null) {
                  Loaders.warningSnackBar(
                      context: context,
                      title:SparkString.pleaseSelectATimeFirst);
                  return;
                }
                context.read<ScheduleMeetingCubit>().scheduleMeeting(
                      ScheduleRequestBody(
                        ideaId: ideaResponse.id,
                        scheduledDateTime: selectedTime!,
                      ),
                    );
              },
              child: const Text(SparkString.continue_),
            ),
          ),
        );
      },
    );
  }
}