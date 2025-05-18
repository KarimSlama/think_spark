import 'package:think_spark/think_spark/screens/chat/data/model/conversations_response.dart';

class ConversationArgs {
  final ConversationsResponse? conversations;
  final int currentUserId;
  final int index;
  final int? conversationId;
  final int? participantId;
  final int? recipientId;
  final String? recipientName;
  final String? recipientImage;

  ConversationArgs({
    this.conversations,
    required this.currentUserId,
    required this.index,
    this.conversationId,
    this.participantId,
    this.recipientId,
    this.recipientName,
    this.recipientImage,
  });
}