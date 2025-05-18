import 'package:freezed_annotation/freezed_annotation.dart';
part 'conversations_response.g.dart';

@JsonSerializable()
class ConversationsResponse {
  final bool success;
  final String message;
  final List<Conversations> conversations;

  const ConversationsResponse(  
      {required this.success,
      required this.message,
      required this.conversations});

  factory ConversationsResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationsResponseFromJson(json);
}

@JsonSerializable()
class Conversations {
  final int id;
  final Participants participant;
  final List<Messages> messages;

  const Conversations(
      {required this.id, required this.participant, required this.messages});
  factory Conversations.fromJson(Map<String, dynamic> json) =>
      _$ConversationsFromJson(json);
}

@JsonSerializable()
class Participants {
  final int id;
  final String username;
  final String image;

  Participants(
      {required this.id,
      required this.username,
      required this.image,
});

  factory Participants.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsFromJson(json);
}

@JsonSerializable()
class Messages {
  final int id;
  final Sender sender;
  @JsonKey(name: 'text')
  final String message;
  @JsonKey(name: 'timestamp')
  final DateTime time;
  // @JsonKey(name: 'is_read')
  // final bool isRead;

  const Messages(
      {required this.id,
      required this.sender,
      required this.message,
      required this.time,
      // required this.isRead
      });

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}

@JsonSerializable()
class Sender {
  final int id;
  final String username;
  final String image;
  final String bio;

  const Sender(
      {required this.id,
      required this.username,
      required this.image,
      required this.bio});

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}
