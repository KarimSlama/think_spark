import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.g.dart';

@JsonSerializable()
class ResetPasswordRequest {
  @JsonKey(name: 'new_password')
  final String newPassword;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  final String identifier;

  ResetPasswordRequest({required this.newPassword, required this.confirmPassword, required this.identifier});

    Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);

}
