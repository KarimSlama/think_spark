import 'package:json_annotation/json_annotation.dart';
part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final String message;
  final ProfileData profile;

  const ProfileResponse({required this.message, required this.profile});

  ProfileResponse copyWith({
    required String? message,
    required ProfileData? profile,
  }) {
    return ProfileResponse(
      message: message ?? this.message,
      profile: profile ?? this.profile,
    );
  }

  static ProfileResponse empty() => ProfileResponse(
        message: '',
        profile: ProfileData.empty(),
      );

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}

@JsonSerializable()
class ProfileData {
  final int id;
  @JsonKey(name: 'username')
  final String userName;
  final String email;
  final String phone;
  @JsonKey(name: 'user_type')
  final String userType;
  @JsonKey(name: 'is_verified')
  final bool isVerified;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final String image;
  final String bio;

  const ProfileData(
      {required this.id,
      required this.userName,
      required this.email,
      required this.phone,
      required this.userType,
      required this.isVerified,
      required this.createdAt,
      required this.image,
      required this.bio});

  ProfileData copyWith({
    int? id,
    String? userName,
    String? email,
    String? phone,
    String? userType,
    bool? isVerified,
    DateTime? createdAt,
    String? image,
    String? bio,
  }) {
    return ProfileData(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      userType: userType ?? this.userType,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt ?? this.createdAt,
      image: image ?? this.image,
      bio: bio ?? this.bio,
    );
  }

  static ProfileData empty() => ProfileData(
        id: 0,
        userName: '',
        email: '',
        phone: '',
        userType: '',
        isVerified: false,
        createdAt: DateTime.now(),
        image: '',
        bio: '',
      );

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}
