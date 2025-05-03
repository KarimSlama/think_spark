import 'package:json_annotation/json_annotation.dart';

part 'profile_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class ProfileRequestBody {
  final String? username;
  final String? email;
  final String? phone;
  @JsonKey(name: 'user_type')
  final String? userType;
  final String? bio;
  final String? image;
  @JsonKey(name: 'is_verified')
  final bool? isVerified;

  const ProfileRequestBody({
    this.username,
    this.email,
    this.phone,
    this.userType,
    this.bio,
    this.image,
    this.isVerified,
  });

  factory ProfileRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ProfileRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileRequestBodyToJson(this);

 
}
