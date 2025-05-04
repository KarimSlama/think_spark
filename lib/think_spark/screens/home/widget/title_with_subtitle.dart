import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class ScreenTitleWithSubTitle extends StatelessWidget {
  const ScreenTitleWithSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.sm,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => SparkShimmerEffect(width: 100, height: 20),
              success: (profile) => Text(
                '${SparkString.hey} ${profile.profile.userName}👋',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: SparkColors.darkGrey),
              ),
              error: (error) => Text(error),
              orElse: () => SizedBox(),
            );
          },
        ),
        Text(
          SparkString.creativityEffortlesslyCommunication,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 20.sp),
        ),
      ],
    );
  }
}
