// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoreis_with_ideas_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoreisWithIdeasResponse _$CategoreisWithIdeasResponseFromJson(
        Map<String, dynamic> json) =>
    CategoreisWithIdeasResponse(
      id: (json['id'] as num).toInt(),
      categoryName: json['name'] as String,
      ideas: (json['ideas'] as List<dynamic>)
          .map((e) => IdeaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoreisWithIdeasResponseToJson(
        CategoreisWithIdeasResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.categoryName,
      'ideas': instance.ideas,
    };
