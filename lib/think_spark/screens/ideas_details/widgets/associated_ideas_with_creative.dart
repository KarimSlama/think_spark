import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/cards/cards_of_ideas_list.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class AssociatedIdeasWithCreative extends StatelessWidget {
  final List<IdeaResponse> allIdeas;
  final int userId;
  final int? excludedIdeaId;
  final bool canEdit, canRemove;
  final VoidCallback? onCardPressed;
  const AssociatedIdeasWithCreative(
      {super.key,
      required this.allIdeas,
      required this.userId,
      this.excludedIdeaId,
      this.canEdit = false,
      this.canRemove = false,
      this.onCardPressed});

  @override
  Widget build(BuildContext context) {
    final relatedIdeas = allIdeas.where((idea) {
      final isSameUser = idea.user.id == userId;
      final isNotExcluded = excludedIdeaId == null || idea.id != excludedIdeaId;
      return isSameUser && isNotExcluded;
    }).toList();

    return relatedIdeas.isNotEmpty
        ? CardsOfIdeasList(
            ideas: relatedIdeas,
            canEdit: canEdit,
            canRemove: canRemove,
            onCardPressed: onCardPressed)
        : Padding(
            padding: EdgeInsets.symmetric(vertical: SparkSizes.md),
            child: Text(
              SparkString.noOtherIdeasFromThisUser,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: SparkColors.darkGrey,
                  ),
            ),
          );
  }
}
