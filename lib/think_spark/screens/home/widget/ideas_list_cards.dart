import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/cards/blue_card.dart';
import 'package:think_spark/core/common/widgets/cards/olive_card.dart';
import 'package:think_spark/core/common/widgets/loading/idea_shimmer_loading.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/home_cubit.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/home_state.dart';

class IdeasListCards extends StatelessWidget {
  const IdeasListCards({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const IdeaShimmerLoading(),
          success: (ideas) {
            return Column(
              spacing: 14.h,
              children: List.generate(2, (rowIndex) {
                final firstIndex = rowIndex * 2;
                final secondIndex = firstIndex + 1;
            
                return Row(
                  spacing: 14.w,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (firstIndex < ideas.length)
                      Flexible(
                        child: rowIndex % 2 == 0
                            ? BlueCard(ideaResponse: ideas[firstIndex])
                            : OliveCard(ideaResponse: ideas[firstIndex]),
                      ),
                    if (secondIndex < ideas.length)
                      Flexible(
                        child: rowIndex % 2 == 0
                            ? OliveCard(ideaResponse: ideas[secondIndex])
                            : BlueCard(ideaResponse: ideas[secondIndex]),
                      ),
                  ].whereType<Widget>().toList(),
                );
              }),
            );
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
