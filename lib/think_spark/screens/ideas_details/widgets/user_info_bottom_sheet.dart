import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/associated_ideas_with_creative.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/creative_info_with_menu_popup.dart';
import 'package:think_spark/think_spark/screens/ideas_details/widgets/location_with_first_joined_header.dart';

class UserInfoBottomSheet extends StatelessWidget {
  final IdeaResponse ideaResponse;
  final List<IdeaResponse> allIdeas;

  const UserInfoBottomSheet(
      {super.key, required this.ideaResponse, required this.allIdeas});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SparkSizes.ms),
        child: Column(
          spacing: SparkSizes.ms,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreativeInfoWithMenuPopup(ideaResponse: ideaResponse),
            SizedBox(height: SparkSizes.md),
            LocationWithFirstJoinedHeader(ideaResponse: ideaResponse),
            Text('${SparkString.moreFrom} ${ideaResponse.user.username}',
                style: Theme.of(context).textTheme.bodyLarge),
            AssociatedIdeasWithCreative(
                allIdeas: allIdeas, ideaResponse: ideaResponse),
          ],
        ),
      ),
    );
  }
}
