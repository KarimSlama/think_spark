// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesResponse _$PreferencesResponseFromJson(Map<String, dynamic> json) =>
    PreferencesResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$PreferencesResponseToJson(
        PreferencesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
