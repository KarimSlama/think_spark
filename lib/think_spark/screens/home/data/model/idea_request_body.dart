import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';

part 'idea_request_body.g.dart';

@JsonSerializable()
class IdeaRequestBody {
  final String? title;
  final Tabs? tabs;

  IdeaRequestBody({this.title, this.tabs});

  factory IdeaRequestBody.fromJson(Map<String, dynamic> json) =>
      _$IdeaRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$IdeaRequestBodyToJson(this);
}
