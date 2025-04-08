import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/gen/assets.gen.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<BoardingModel> boarding = [
  BoardingModel(
    image: Assets.images.idea,
    title: SparkString.unleashGreatIdeas,
    body: SparkString
        .exploreInnovativeIdeasFromPeopleAroundTheWorldAndTurnDreamsIntoReality,
  ),
  BoardingModel(
    image: Assets.images.idea2,
    title: SparkString.unleashGreatIdeas,
    body: SparkString
        .exploreInnovativeIdeasFromPeopleAroundTheWorldAndTurnDreamsIntoReality,
  ),
  BoardingModel(
    image: Assets.images.idea3,
    title: SparkString.unleashGreatIdeas,
    body: SparkString
        .exploreInnovativeIdeasFromPeopleAroundTheWorldAndTurnDreamsIntoReality,
  ),
  BoardingModel(
    image: Assets.images.idea4,
    title: SparkString.unleashGreatIdeas,
    body: SparkString
        .exploreInnovativeIdeasFromPeopleAroundTheWorldAndTurnDreamsIntoReality,
  ),
];
