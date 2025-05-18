import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_message_response.g.dart';

@JsonSerializable()
class SendMessageResponse {
  final bool success;
  final String message;
  @JsonKey(name: 'data')
  final Message messageData;
  @JsonKey(name: 'conversation_id')
  final int conversationId;

  const SendMessageResponse(
      {required this.success,
      required this.message,
      required this.messageData,
      required this.conversationId
      });

  factory SendMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SendMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageResponseToJson(this);
}

@JsonSerializable()
class Message {
  final int id;
  final String text;
  @JsonKey(name: 'timestamp')
  final DateTime time;
  final SenderInfo sender;

  const Message(
      {required this.id,
      required this.text,
      required this.time,
      required this.sender});

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable()
class SenderInfo {
  final int id;
  final String username;
  final String image;
  final String bio;

  const SenderInfo({required this.id, required this.username , required this.image,required this.bio});

  factory SenderInfo.fromJson(Map<String, dynamic> json) => _$SenderInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SenderInfoToJson(this);
}
