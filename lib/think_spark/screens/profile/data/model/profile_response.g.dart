// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      message: json['message'] as String,
      profile: ProfileData.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'profile': instance.profile,
    };

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => ProfileData(
      id: (json['id'] as num).toInt(),
      userName: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      userType: json['user_type'] as String,
      isVerified: json['is_verified'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      image: json['image'] as String? ??
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      bio: json['bio'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'user_type': instance.userType,
      'is_verified': instance.isVerified,
      'created_at': instance.createdAt.toIso8601String(),
      'image': instance.image,
      'bio': instance.bio,
    };
