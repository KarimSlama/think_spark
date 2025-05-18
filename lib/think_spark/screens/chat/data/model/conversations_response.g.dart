// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationsResponse _$ConversationsResponseFromJson(
        Map<String, dynamic> json) =>
    ConversationsResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      conversations: (json['conversations'] as List<dynamic>)
          .map((e) => Conversations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConversationsResponseToJson(
        ConversationsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'conversations': instance.conversations,
    };

Conversations _$ConversationsFromJson(Map<String, dynamic> json) =>
    Conversations(
      id: (json['id'] as num).toInt(),
      participant:
          Participants.fromJson(json['participant'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Messages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConversationsToJson(Conversations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participant': instance.participant,
      'messages': instance.messages,
    };

Participants _$ParticipantsFromJson(Map<String, dynamic> json) => Participants(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$ParticipantsToJson(Participants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
    };

Messages _$MessagesFromJson(Map<String, dynamic> json) => Messages(
      id: (json['id'] as num).toInt(),
      sender: Sender.fromJson(json['sender'] as Map<String, dynamic>),
      message: json['text'] as String,
      time: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$MessagesToJson(Messages instance) => <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'text': instance.message,
      'timestamp': instance.time.toIso8601String(),
    };

Sender _$SenderFromJson(Map<String, dynamic> json) => Sender(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      image: json['image'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$SenderToJson(Sender instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'bio': instance.bio,
    };
