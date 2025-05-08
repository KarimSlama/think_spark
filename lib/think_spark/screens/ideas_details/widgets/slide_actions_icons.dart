import 'package:flutter/material.dart';
import 'package:think_spark/core/common/widgets/icons/favorite_icon.dart';
import 'package:think_spark/core/common/widgets/icons/meetings_icon.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class SlideActionsIcons extends StatelessWidget {
  final IdeaResponse ideaResponse;
  const SlideActionsIcons({
    super.key,
    required this.ideaResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: SparkSizes.sm,
      children: [
        MeetingsIcon(ideaResponse: ideaResponse),
        FavoriteIcon(ideaId: ideaResponse.id.toString()),
      ],
    );
  }
}
