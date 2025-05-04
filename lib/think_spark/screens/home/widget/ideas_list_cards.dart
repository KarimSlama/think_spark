import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/cards/cards_of_ideas_list.dart';
import 'package:think_spark/core/common/widgets/loading/idea_shimmer_loading.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';

class IdeasListCards extends StatelessWidget {
  const IdeasListCards({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdeasCubit, IdeasState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const IdeaShimmerLoading(),
            success: (ideas) {
              return CardsOfIdeasList(ideas: ideas!);
            },
            orElse: () => const IdeaShimmerLoading());
      },
    );
  }
}
