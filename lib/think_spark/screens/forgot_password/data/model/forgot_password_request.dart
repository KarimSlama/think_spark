import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_password_request.g.dart';
@JsonSerializable()
class ForgotPasswordRequest {
  final String identifier;

  ForgotPasswordRequest({required this.identifier});

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestToJson(this);
}

