// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordResponse _$PasswordResponseFromJson(Map<String, dynamic> json) =>
    PasswordResponse(
      message: json['message'] as String,
      identifier: json['identifier'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$PasswordResponseToJson(PasswordResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'identifier': instance.identifier,
      'error': instance.error,
    };
