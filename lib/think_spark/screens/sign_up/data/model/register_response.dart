import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final UserData user;
  final String status;
  final int code;
  final String message;
  final Map<String, List<String>>? errors;

  RegisterResponse(this.status, this.code, this.message, this.errors,
      {required this.user});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final String username;
  final String email;
  final String phone;
  final String token;
  @JsonKey(name: 'user_type') 
  final String userType;
  @JsonKey(name: 'is_verified')
  final bool isVerified;

  UserData({
    required this.username,
    required this.email,
    required this.phone,
    required this.token,
    required this.userType,
    required this.isVerified,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
