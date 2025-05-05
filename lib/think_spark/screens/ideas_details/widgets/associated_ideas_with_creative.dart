import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/cards/cards_of_ideas_list.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class AssociatedIdeasWithCreative extends StatelessWidget {
  final List<IdeaResponse> allIdeas;
  final IdeaResponse ideaResponse;
  const AssociatedIdeasWithCreative(
      {super.key, required this.allIdeas, required this.ideaResponse});

  @override
  Widget build(BuildContext context) {
    List<IdeaResponse> getRelatedIdeas() {
      return allIdeas
          .where((idea) =>
              idea.user.id == ideaResponse.user.id &&
              idea.id != ideaResponse.id)
          .toList();
    }

    return getRelatedIdeas().isNotEmpty
        ? CardsOfIdeasList(ideas: getRelatedIdeas())
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
