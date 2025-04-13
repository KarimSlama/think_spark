import 'package:json_annotation/json_annotation.dart';
part 'preferences_response.g.dart';

@JsonSerializable()
class PreferencesResponse {
  final int id;
  final String name;

  PreferencesResponse({required this.id, required this.name});

  factory PreferencesResponse.fromJson(Map<String, dynamic> json) =>
      _$PreferencesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesResponseToJson(this);

}