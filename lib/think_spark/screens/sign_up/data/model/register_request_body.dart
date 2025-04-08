import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  @JsonKey(name: 'username')
  final String name;
  final String email;
  final String phone;
  final String password;
  final String userType;

  RegisterRequestBody(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.userType});

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
