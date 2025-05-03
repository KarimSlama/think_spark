// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileRequestBody _$ProfileRequestBodyFromJson(Map<String, dynamic> json) =>
    ProfileRequestBody(
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      userType: json['user_type'] as String?,
      bio: json['bio'] as String?,
      image: json['image'] as String?,
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$ProfileRequestBodyToJson(ProfileRequestBody instance) =>
    <String, dynamic>{
      if (instance.username case final value?) 'username': value,
      if (instance.email case final value?) 'email': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.userType case final value?) 'user_type': value,
      if (instance.bio case final value?) 'bio': value,
      if (instance.image case final value?) 'image': value,
      if (instance.isVerified case final value?) 'is_verified': value,
    };
