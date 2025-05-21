import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/widgets/cards/blue_card.dart';
import 'package:think_spark/core/common/widgets/cards/olive_card.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/drawer_cubit.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

class CardsOfIdeasList extends StatelessWidget {
  final List<IdeaResponse> ideas;
  final bool canEdit, canRemove;
  final VoidCallback? onCardPressed;
  const CardsOfIdeasList(
      {super.key,
      required this.ideas,
      this.canEdit = false,
      this.canRemove = false,
      this.onCardPressed});

  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: rowIndex % 2 == 0
                    ? BlueCard(
                        canEdit: canEdit,
                        canRemove: canRemove,
                        ideaResponse: ideas[firstIndex],
                        isExpanded: context.read<DrawerCubit>().isDrawerOpen,
                        onCardPressed: onCardPressed,
                      )
                    : OliveCard(
                        ideaResponse: ideas[firstIndex],
                        canEdit: canEdit,
                        canRemove: canRemove,
                        onCardPressed: onCardPressed,
                      ),
              ),
            if (secondIndex < ideas.length)
              Expanded(
                child: rowIndex % 2 == 0
                    ? OliveCard(
                        ideaResponse: ideas[secondIndex],
                        canEdit: canEdit,
                        canRemove: canRemove,
                        onCardPressed: onCardPressed,
                      )
                    : BlueCard(
                        ideaResponse: ideas[secondIndex],
                        isExpanded: context.read<DrawerCubit>().isDrawerOpen,
                        canEdit: canEdit,
                        canRemove: canRemove,
                        onCardPressed: onCardPressed,
                      ),
              ),
          ].whereType<Widget>().toList(),
        );
      }),
    );
  }
}
