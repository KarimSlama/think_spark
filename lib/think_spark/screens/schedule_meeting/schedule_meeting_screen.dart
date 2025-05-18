import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/widget/popular_user.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/user_info_bottom_sheet.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_cubit.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_state.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_request_body.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/widget/date_and_available_time_picker.dart';

class ScheduleMeetingScreen extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const ScheduleMeetingScreen({super.key, required this.ideaResponse});
  @override
  Widget build(BuildContext context) {
    DateTime? selectedTime;

    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.scheduleAMeeting),
        actions: [
          ProfileImageCircular(
            width: 40,
            height: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: SparkSizes.ms, vertical: SparkSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: SparkSizes.md,
          children: [
            Text(SparkString.selectYourTimeForTheMeeting,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(
                SparkString
                    .youCanChooseTheDateAndTimeFromTheAvailableDatesAndTimesBasedOnCreativeAvailability,
                style: Theme.of(context).textTheme.labelLarge),
            SectionHeading(
                text: SparkString.creativeInfo, isActionButton: false),
            PopularUser(
              name: ideaResponse.user.username,
              text: ideaResponse.user.bio ?? SparkString.unfoundBio,
              padding: 2,
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => UserInfoBottomSheet(
                    ideaResponse: ideaResponse,
                    allIdeas: context.read<IdeasCubit>().ideasList),
              ),
              onImageTapped: () => Constants.showEnlargedImage(
                  ideaResponse.user.image ?? '', context),
              widget: Image.network(
                  width: 60.w,
                  height: 60.h,
                  fit: BoxFit.cover,
                  '${ideaResponse.user.image}'),
            ),
            DateAndAvailableTimePicker(
              onTimeSelected: (dateTime) {
                selectedTime = dateTime;
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BlocConsumer<ScheduleMeetingCubit, ScheduleMeetingState>(
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
          return Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: SparkSizes.spaceBtwItems, vertical: SparkSizes.md),
            child: ElevatedButton(
                onPressed: () {
                  if (selectedTime == null) {
                    Loaders.warningSnackBar(
                        context: context,
                        title: SparkString.pleaseSelectATimeFirst);
                    return;
                  }
                  context.read<ScheduleMeetingCubit>().scheduleMeeting(
                        ScheduleRequestBody(
                          ideaId: ideaResponse.id,
                          scheduledDateTime: selectedTime!,
                        ),
                      );
                },
                child: const Text(SparkString.continue_)),
          );
        },
      ),
    );
  }
}
