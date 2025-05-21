import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/loading/spark_shimmer.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/core/routing/routes.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/associated_ideas_with_creative.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_cubit.dart';

class LatestClue extends StatelessWidget {
  const LatestClue({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdeasCubit, IdeasState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
            loading: () =>
                const SparkShimmerEffect(width: double.infinity, height: 180),
            success: (ideas) {
              final currentUserId =
                  context.read<ProfileCubit>().profileResponse.profile.id;
              final userIdeas =
                  ideas?.where((i) => i.user.id == currentUserId).toList();
              final latestIdea = userIdeas?.last;
              return ideas!.isNotEmpty
                  ? AssociatedIdeasWithCreative(
                      allIdeas: ideas,
                      userId: currentUserId,
                      excludedIdeaId: latestIdea!.id,
                      canEdit: true,
                      canRemove: true,
                      onCardPressed: () {
                        context.pushNamed(Routes.editClueScreen,
                            arguments: latestIdea);
                      })
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          SparkString.noOtherIdeasFromThisUser,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                                color: SparkColors.blue,
                                Iconsax.document_upload)),
                      ],
                    );
            },
            error: (error) => Text(error),
            orElse: () => const SizedBox());
      },
    );
  }
}
