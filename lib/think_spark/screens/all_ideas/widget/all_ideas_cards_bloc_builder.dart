import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/cards/idea_card_column.dart';
import 'package:think_spark/core/common/widgets/cards/idea_card_row.dart';
import 'package:think_spark/core/common/widgets/texts/section_heading.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/all_ideas/controller/ideas_cubit.dart';
import 'package:think_spark/think_spark/screens/all_ideas/controller/ideas_state.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class AllIdeasCardsBlocBuilder extends StatelessWidget {
  final List<IdeaResponse> ideas;
  const AllIdeasCardsBlocBuilder({super.key, required this.ideas});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdeasCubit, IdeasState>(
      builder: (context, state) {
        final rowCount = (ideas.length / 2).ceil();
        return Column(
          children: [
            SectionHeading(
              text: SparkString.popularClue,
              isIcon: true,
              isActionButton: false,
              iconColor: SparkColors.doggerBlue,
              onPressed: () => context.read<IdeasCubit>().changeCategoryIcon(),
              icon: context.read<IdeasCubit>().isCategoryRow
                  ? Iconsax.sort
                  : Iconsax.element_4,
            ),
            context.read<IdeasCubit>().isCategoryRow
                ? Column(
                    spacing: 12,
                    children: List.generate(rowCount, (rowIndex) {
                      final firstIndex = rowIndex * 2;
                      final secondIndex = firstIndex + 1;
                      return IdeaCardsRow(
                        firstIdea: ideas[firstIndex],
                        secondIdea: secondIndex < ideas.length
                            ? ideas[secondIndex]
                            : null,
                        isEvenRow: rowIndex % 2 == 0,
                      );
                    }),
                  )
                : IdeaCardsColumn(
                    ideas: ideas,
                  ),
          ],
        );
      },
    );
  }
}
