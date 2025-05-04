import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/circulars/circular_container_shadow.dart';
import 'package:think_spark/core/common/widgets/loading/image_shimmer.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class ProfileImageCircular extends StatelessWidget {
  final double? width, height, radius;
  const ProfileImageCircular({
    super.key,
    this.width,
    this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => ImageShimmerShimmerEffect(width: 50.w, height: 50.h),
          success: (profile) => GestureDetector(
            onTap: () => context.pushNamed(Routes.profileScreen),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius ?? 50),
              child: CircularContainerShadow(
                height: height,
                width: width,
                icon: Image.network(
                    fit: BoxFit.cover,
                    '${ApiConstants.apiBaseUrl}${profile.profile.image}'),
              ),
            ),
          ),
          error: (error) => const SizedBox(),
          orElse: () => SizedBox(),
        );
      },
    );
  }
}
