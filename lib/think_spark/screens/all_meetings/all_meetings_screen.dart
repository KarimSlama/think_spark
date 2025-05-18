import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/circulars/profile_image_circular.dart';
import 'package:think_spark/core/common/widgets/containers/category_container.dart';
import 'package:think_spark/core/common/widgets/loading/card_meeting_shimmer_loading.dart';
import 'package:think_spark/core/common/widgets/rows/icon_with_text_in_row.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_cubit.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_state.dart';

class AllMeetingsScreen extends StatelessWidget {
  const AllMeetingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.allMeeting),
        actions: [
          ProfileImageCircular(
            width: 40,
            height: 40,
          ),
        ],
      ),
      body: BlocBuilder<ScheduleMeetingCubit, ScheduleMeetingState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => CardMeetingShimmerLoading(),
            success: (response) {
              return ListView.builder(
                  itemCount: response.schedule.length,
                  itemBuilder: (_, index) {
                    DateTime dateTime = DateTime.parse(
                        response.schedule[index].scheduledDateTime.toString());
                    DateTime endTime = dateTime.add(Duration(minutes: 50));

                    String formattedDate =
                        DateFormat('MMM dd, yyyy').format(dateTime);
                    String timeRange =
                        '${DateFormat('HH:mm').format(dateTime)} - ${DateFormat('HH:mm').format(endTime)}';
                    return Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: SparkSizes.ms, vertical: SparkSizes.md),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: SparkSizes.spaceBtwItems / 2,
                        children: [
                          Text(SparkHelperFunctions.formatDateTime(
                              response.schedule[index].createdAt.toString())),
                          CircularContainerShadow(
                            padding: SparkSizes.md,
                            radius: 25.r,
                            widget: Column(
                              spacing: SparkSizes.spaceBtwItems,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: SparkSizes.defaultSpace,
                                  children: [
                                    CategoryContainer(
                                      title: formattedDate,
                                      fontSize: 12.sp,
                                      backgroundColor: SparkColors.anakiwa
                                          .withValues(alpha: .5),
                                      borderColor: Colors.transparent,
                                    ),
                                    CategoryContainer(
                                      title: timeRange,
                                      fontSize: 12.sp,
                                      backgroundColor: SparkColors.anakiwa
                                          .withValues(alpha: .5),
                                      borderColor: Colors.transparent,
                                    ),
                                  ],
                                ),
                                Text(
                                  response.schedule[index].ideaTitle,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                IconWithTextInRow(
                                  title:
                                      '${SparkString.chatWith}${response.schedule[index].creative}',
                                  icon: Iconsax.profile_2user,
                                  fontSize: 12.sp,
                                  spacing: SparkSizes.sm,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                      child: Image.network(
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                          '${ApiConstants.apiBaseUrlWithoutSlash}${response.schedule[index].image}'),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Iconsax.message,
                                                color: SparkColors.blue)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Iconsax.trash,
                                                color: SparkColors.red)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            error: (message) => Text(message),
            orElse: () => SizedBox(),
          );
        },
      ),
    );
  }
}
