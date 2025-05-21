// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idea_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdeaRequestBody _$IdeaRequestBodyFromJson(Map<String, dynamic> json) =>
    IdeaRequestBody(
      title: json['title'] as String?,
      tabs: json['tabs'] == null
          ? null
          : Tabs.fromJson(json['tabs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IdeaRequestBodyToJson(IdeaRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tabs': instance.tabs,
    };
