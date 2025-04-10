import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_response.g.dart';

@JsonSerializable()
class PasswordResponse {
  final String message;
  final String? identifier;
  final String? error;

  PasswordResponse({required this.message, this.identifier, this.error});

  factory PasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordResponseToJson(this);
}
