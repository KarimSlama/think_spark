import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/chat/controller/cubit/chat_state.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversations_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_request_body.dart';
import 'package:think_spark/think_spark/screens/chat/data/repository/conversations_repository.dart';
import 'package:think_spark/think_spark/screens/chat/data/repository/send_message_repository.dart';

class ChatCubit extends Cubit<ChatState> {
  final ConversationsRepository conversationsRepository;
  final SendMessageRepository sendMessageRepository;

  final Map<int, List<Messages>> _conversationMessages = {};
  List<Conversations> conversationsList = [];
  StreamSubscription? _messageSubscription;
  int? _currentConversationId;

  ChatCubit(this.conversationsRepository, this.sendMessageRepository)
      : super(ChatState.initial());

  List<Messages> get messages => _currentConversationId != null
      ? _conversationMessages[_currentConversationId] ?? []
      : [];

  Future<void> fetchConversations() async {
    emit(ChatState.loading());

    final response = await conversationsRepository.fetchConversations();
    response.when(
      success: (conversations) {
        conversationsList = conversations.conversations;
        for (final conversation in conversations.conversations) {
          _conversationMessages[conversation.id] = conversation.messages;
          _conversationMessages[conversation.id]
              ?.sort((a, b) => a.time.compareTo(b.time));
        }
        emit(ChatState.loaded(conversations: conversations));
      },
      failure: (error) {
        emit(ChatState.error(error: error.apiErrorModel.message.toString()));
      },
    );
  }

  Future<void> loadConversationMessages(int conversationId) async {
    try {
      _currentConversationId = conversationId;

      if (!_conversationMessages.containsKey(conversationId)) {
        final conversation = conversationsList.firstWhere(
          (conv) => conv.id == conversationId,
        );
        _conversationMessages[conversationId] = conversation.messages;
      }

      _conversationMessages[conversationId]
          ?.sort((a, b) => a.time.compareTo(b.time));
      emit(ChatState.loadedMessages(
          messages: _conversationMessages[conversationId] ?? []));
    } catch (e) {
      emit(ChatState.error(error: 'Conversation not found'));
    }
  }

  void connect(int userId) {
    _messageSubscription?.cancel();

    sendMessageRepository.connect(userId: userId);

    _messageSubscription = sendMessageRepository.messageStream.listen(
      _handleIncomingMessage,
      onError: (error) => emit(ChatState.error(error: error.toString())),
    );
  }

  Future<void> ensureConnected(int userId) async {
    if (_messageSubscription == null) {
      connect(userId);
    }
  }

  Future<void> startOrContinueConversation({
    required int currentUserId,
    required int otherUserId,
    required String message,
  }) async {
    await ensureConnected(currentUserId);

    emit(ChatState.sending());

    final existingConversation =
        findExistingConversation(currentUserId, otherUserId);

    if (existingConversation != null) {
      await sendMessage(SendMessageRequestBody(
        message: message,
        conversationId: existingConversation.id,
        userId: currentUserId,
      ));
    } else {
      final response = await sendMessageRepository.createNewConversation(
        recipientId: otherUserId,
        message: message,
        userId: currentUserId,
      );
      response.when(
        success: (newConversation) {
          emit(ChatState.conversationCreated(response: newConversation));

          messages.add(Messages(
            id: Random().nextInt(1000),
            message: message,
            time: DateTime.now(),
            sender: Sender(
              id: currentUserId,
              username: 'You',
              image: '',
              bio: '',
            ),
          ));

          sendMessage(SendMessageRequestBody(
            message: message,
            conversationId: newConversation.conversationId,
            userId: currentUserId,
          ));
        },
        failure: (error) {
          emit(ChatState.sendError(
              error: error.apiErrorModel.message.toString()));
        },
      );
    }
  }

  Conversations? findExistingConversation(int user1Id, int user2Id) {
    for (final conversation in conversationsList) {
      final participants = [conversation.participant.id, user1Id];
      if (participants.contains(user2Id)) {
        return conversation;
      }
    }
    return null;
  }

  Future<void> sendMessage(SendMessageRequestBody request) async {
    emit(ChatState.sending());

    _conversationMessages[request.conversationId] ??= [];
    _conversationMessages[request.conversationId]!.add(Messages(
      id: Random().nextInt(1000),
      message: request.message,
      time: DateTime.now(),
      sender: Sender(
        id: request.userId,
        username: 'You',
        image: '',
        bio: '',
      ),
    ));

    if (_currentConversationId == request.conversationId) {
      emit(ChatState.messageReceived(
          messages: _conversationMessages[request.conversationId]!));
    }

    final response = await sendMessageRepository.sendMessage(request);

    response.when(
      success: (response) {
        if (_currentConversationId == request.conversationId) {
          emit(ChatState.sendSuccess(
              messages: _conversationMessages[request.conversationId]!));
        }
      },
      failure: (error) {
        final errorMsg =
            error.apiErrorModel.message ?? 'Failed to send message';
        _conversationMessages[request.conversationId]
            ?.removeWhere((m) => m.id < 1000);
        if (_currentConversationId == request.conversationId) {
          emit(ChatState.sendError(error: errorMsg));
        }
      },
    );
  }

  void _handleIncomingMessage(dynamic message) {

    try {
      final json = jsonDecode(message);

      if (json is Map<String, dynamic>) {
        if (json['type'] == 'message' && json['data'] != null) {
          final newMessage = Messages.fromJson(json['data']);
          messages.add(newMessage);
          messages.sort((a, b) => a.time.compareTo(b.time));
          emit(ChatState.messageReceived(messages: messages));
          return;
        }

        if (json['success'] == true && json['data'] != null) {
          final newMessage = Messages.fromJson(json['data']);
          messages.add(newMessage);
          messages.sort((a, b) => a.time.compareTo(b.time));
          emit(ChatState.sendSuccess(messages: messages));
          return;
        }

        if (json['success'] == false) {
          emit(ChatState.sendError(error: json['message'] ?? 'defaultError'));
        }
      }
    } catch (e) {
      emit(ChatState.sendError(error: 'Failed to parse message'));
    }
  }

  Future<void> refreshConversations() async {
    await fetchConversations();
    final conversations = ConversationsResponse(
        success: true,
        message: messages.last.message,
        conversations: conversationsList);
    emit(ChatState.loaded(conversations: conversations));
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    sendMessageRepository.disconnect();
    return super.close();
  }
}
