// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idea_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdeaResponse _$IdeaResponseFromJson(Map<String, dynamic> json) => IdeaResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] as String,
      ideaImage: json['idea_images'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tabs: Tabs.fromJson(json['tabs'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
      isBeingRemoved: json['isBeingRemoved'] as bool? ?? false,
    );

Map<String, dynamic> _$IdeaResponseToJson(IdeaResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categories': instance.categories,
      'location': instance.location,
      'idea_images': instance.ideaImage,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user,
      'tabs': instance.tabs,
      'isFavorite': instance.isFavorite,
      'isBeingRemoved': instance.isBeingRemoved,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      image: json['image'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'image': instance.image,
      'bio': instance.bio,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };

Tabs _$TabsFromJson(Map<String, dynamic> json) => Tabs(
      description:
          Description.fromJson(json['description'] as Map<String, dynamic>),
      requirements:
          Requirements.fromJson(json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TabsToJson(Tabs instance) => <String, dynamic>{
      'description': instance.description,
      'requirements': instance.requirements,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      problems: json['problems'] as String,
      solutions: json['solutions'] as String,
      whyItWorks: json['why_it_works'] as String,
      benifits: json['benifits'] as String,
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'problems': instance.problems,
      'solutions': instance.solutions,
      'why_it_works': instance.whyItWorks,
      'benifits': instance.benifits,
    };

Requirements _$RequirementsFromJson(Map<String, dynamic> json) => Requirements(
      technical: json['technical'] as String,
      operational: json['operational'] as String,
      team: json['team'] as String,
      expectedDuration: json['expected_duration'] as String,
    );

Map<String, dynamic> _$RequirementsToJson(Requirements instance) =>
    <String, dynamic>{
      'technical': instance.technical,
      'operational': instance.operational,
      'team': instance.team,
      'expected_duration': instance.expectedDuration,
    };
