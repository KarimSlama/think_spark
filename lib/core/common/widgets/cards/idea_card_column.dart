import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/cards/blue_card.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class IdeaCardsColumn extends StatelessWidget {
  final List<IdeaResponse> ideas;

  const IdeaCardsColumn({
    super.key,
    required this.ideas,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(ideas.length, (index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 14.h),
            child:
                BlueCard(ideaResponse: ideas[index], width: double.infinity));
      }),
    );
  }
}
