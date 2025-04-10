// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      json['status'] as String,
      (json['code'] as num).toInt(),
      json['message'] as String,
      (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      token: json['token'] as String,
      userType: json['user_type'] as String,
      isVerified: json['is_verified'] as bool,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'token': instance.token,
      'user_type': instance.userType,
      'is_verified': instance.isVerified,
    };
