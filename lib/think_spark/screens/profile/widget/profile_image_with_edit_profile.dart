import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class ProfileImageWithEditProfile extends StatelessWidget {
  const ProfileImageWithEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100.h,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (profile) => Container(
                      width: 150.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: SparkHelperFunctions.isDark(context)
                              ? SparkColors.black
                              : SparkColors.white,
                          width: 5,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              '${ApiConstants.apiBaseUrl}${profile.profile.image}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    error: (error) => Text(error.toString()),
                    orElse: () => SizedBox(),
                  );
                },
              ),
              Positioned(
                right: -10,
                top: 0,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () =>
                      context.read<ProfileCubit>().uploadUserProfilePicture(),
                  child: CircularContainerShadow(
                    padding: 10,
                    icon: Icon(
                      Iconsax.edit_2,
                      color: SparkColors.doggerBlue,
                      size: SparkSizes.iconSm,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
