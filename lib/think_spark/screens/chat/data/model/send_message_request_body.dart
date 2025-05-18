import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_message_request_body.g.dart';

@JsonSerializable()
class SendMessageRequestBody {
  final String message;
  @JsonKey(name: 'conversation_id')
  final int conversationId;
  // @JsonKey(name: 'recipient_id')
  // final int recipientId;
  @JsonKey(name: 'user_id')
  final int userId;

  SendMessageRequestBody({
    required this.message,
    required this.conversationId,
    required this.userId,
    // required this.recipientId,
  });

  factory SendMessageRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageRequestBodyToJson(this);
}
