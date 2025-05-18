import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversations_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_response.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = Initial;
  const factory ChatState.loading() = Loading;
  const factory ChatState.loaded({required ConversationsResponse conversations}) = Loaded;
  const factory ChatState.error({required String error}) = Error;
  const factory ChatState.sending() = Sending;
  const factory ChatState.conversationCreated({required SendMessageResponse response}) = ConversationCreated;
  const factory ChatState.sendSuccess({required List<Messages> messages}) = ChatSendSuccess;
  const factory ChatState.loadedMessages({required List<Messages> messages}) = LoadedMessages;
  const factory ChatState.sendError({required String error}) = ChatSendError;
  const factory ChatState.messageReceived({required List<Messages> messages}) = MessageReceived;
}