// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idea_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdeaResponse _$IdeaResponseFromJson(Map<String, dynamic> json) => IdeaResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      publisher: json['publisher'] as String,
      location: json['location'] as String,
      problems: json['problems'] as String,
      solutions: json['solutions'] as String,
      whyItWorks: json['why_it_works'] as String,
      benifits: json['benifits'] as String,
      image: json['image'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$IdeaResponseToJson(IdeaResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categories': instance.categories,
      'publisher': instance.publisher,
      'location': instance.location,
      'problems': instance.problems,
      'solutions': instance.solutions,
      'why_it_works': instance.whyItWorks,
      'benifits': instance.benifits,
      'image': instance.image,
      'created_at': instance.createdAt.toIso8601String(),
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
