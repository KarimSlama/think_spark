import 'package:json_annotation/json_annotation.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
part 'categoreis_with_ideas_response.g.dart';

@JsonSerializable()
class CategoreisWithIdeasResponse {
  final int id;
  @JsonKey(name: 'name')
  final String categoryName;
  final List<IdeaResponse> ideas;

  CategoreisWithIdeasResponse(
      {required this.id, required this.categoryName, required this.ideas});

    factory CategoreisWithIdeasResponse.fromJson(Map<String, dynamic> json) =>
          _$CategoreisWithIdeasResponseFromJson(json);
}
