import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/cards/blue_card.dart';
import 'package:think_spark/core/common/widgets/cards/olive_card.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class IdeaCardsRow extends StatelessWidget {
  final IdeaResponse firstIdea;
  final IdeaResponse? secondIdea;
  final bool isEvenRow;

  const IdeaCardsRow({
    super.key,
    required this.firstIdea,
    this.secondIdea,
    required this.isEvenRow,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 14.w,
      children: [
        Flexible(
          child: isEvenRow
              ? BlueCard(ideaResponse: firstIdea)
              : OliveCard(ideaResponse: firstIdea),
        ),
        Flexible(
          child: secondIdea != null
              ? isEvenRow
                  ? OliveCard(ideaResponse: secondIdea!)
                  : BlueCard(ideaResponse: secondIdea!)
              : const SizedBox(),
        ),
      ],
    );
  }
}
