// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageResponse _$SendMessageResponseFromJson(Map<String, dynamic> json) =>
    SendMessageResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      messageData: Message.fromJson(json['data'] as Map<String, dynamic>),
      conversationId: (json['conversation_id'] as num).toInt(),
    );

Map<String, dynamic> _$SendMessageResponseToJson(
        SendMessageResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.messageData,
      'conversation_id': instance.conversationId,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      time: DateTime.parse(json['timestamp'] as String),
      sender: SenderInfo.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'timestamp': instance.time.toIso8601String(),
      'sender': instance.sender,
    };

SenderInfo _$SenderInfoFromJson(Map<String, dynamic> json) => SenderInfo(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      image: json['image'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$SenderInfoToJson(SenderInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'bio': instance.bio,
    };
