// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestorsResponse _$InvestorsResponseFromJson(Map<String, dynamic> json) =>
    InvestorsResponse(
      investors: (json['investors'] as List<dynamic>)
          .map((e) => Investor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InvestorsResponseToJson(InvestorsResponse instance) =>
    <String, dynamic>{
      'investors': instance.investors,
    };

Investor _$InvestorFromJson(Map<String, dynamic> json) => Investor(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      bio: json['bio'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$InvestorToJson(Investor instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'image': instance.image,
    };
