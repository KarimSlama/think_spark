// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequest _$ResetPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequest(
      newPassword: json['new_password'] as String,
      confirmPassword: json['confirm_password'] as String,
      identifier: json['identifier'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestToJson(
        ResetPasswordRequest instance) =>
    <String, dynamic>{
      'new_password': instance.newPassword,
      'confirm_password': instance.confirmPassword,
      'identifier': instance.identifier,
    };
