import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/cards/cards_of_ideas_list.dart';
import 'package:think_spark/core/constants/spark_sizes.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/core/helpers/extensions.dart';
import 'package:think_spark/gen/assets.gen.dart';
import 'package:think_spark/think_spark/screens/categories/data/model/categoreis_with_ideas_response.dart';

class IdeasRelatedToCategoryScreen extends StatelessWidget {
  final CategoreisWithIdeasResponse categoreisWithIdeasResponse;

  const IdeasRelatedToCategoryScreen({
    super.key,
    required this.categoreisWithIdeasResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        leadingOnPressed: () => context.pop(),
        title: Text(categoreisWithIdeasResponse.categoryName),
      ),
      body: categoreisWithIdeasResponse.ideas.isNotEmpty
          ? Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: SparkSizes.ms,
                vertical: SparkSizes.defaultSpace,
              ),
              child: CardsOfIdeasList(ideas: categoreisWithIdeasResponse.ideas),
            )
          : Center(
              child: Column(
                children: [
                  Lottie.asset(Assets.images.animation1744759242249),
                  Text(
                    SparkString.noIdeasInThisCategory,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
    );
  }
}
