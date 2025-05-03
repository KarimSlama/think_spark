import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loading/user_name_phone_shimmer.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';

class UserNameWithPhone extends StatelessWidget {
  const UserNameWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => UserNamePhoneShimmerEffect(),
            success: (profile) => Column(
                  children: [
                    Text(profile.profile.userName,
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text(
                      profile.profile.phone,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: SparkColors.light),
                    ),
                  ],
                ),
            error: (error) => Text(error.toString()),
            orElse: () => SizedBox());
      },
    );
  }
}
