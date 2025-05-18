// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageRequestBody _$SendMessageRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SendMessageRequestBody(
      message: json['message'] as String,
      conversationId: (json['conversation_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$SendMessageRequestBodyToJson(
        SendMessageRequestBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'conversation_id': instance.conversationId,
      'user_id': instance.userId,
    };
