import 'dart:async';
import 'dart:convert';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversations_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_request_body.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/web_socket/we_socket_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketServiceImpl implements WebSocketService {
  WebSocketChannel? _channel;
  final _streamController = StreamController<String>.broadcast();
  final Map<String, Completer<SendMessageResponse>> _pendingRequests = {};
  StreamSubscription? _subscription;
  bool _isConnected = false;
  int _requestId = 0;

  @override
  void connect({required int userId}) {
    if (_isConnected) return;

    try {
      _channel = WebSocketChannel.connect(
        Uri.parse('${ApiConstants.apiBaseUrlWS}?user_id=$userId'),
      );

      _subscription?.cancel();
      _subscription = _channel!.stream.listen(
        (message) => _handleIncomingMessage(message),
        onError: (error) => _handleError(error),
        onDone: () => _handleDisconnection(),
      );

      _isConnected = true;
    } catch (e) {
      print('Connection error: $e');
      _handleError(e);
    }
  }

  void _handleIncomingMessage(dynamic message) {
    try {
      print('Raw WebSocket message: $message');
      final json = jsonDecode(message) as Map<String, dynamic>;

      if (json['success'] == true &&
          json['data'] != null &&
          json['conversation_id'] != null) {
        final newMessage = Messages.fromJson(json['data']);
        _streamController.add(jsonEncode({
          'type': 'message',
          'data': json['data'],
          'conversation_id': json['conversation_id']
        }));
        return;
      }

      if (json.containsKey('request_id')) {
        _handleRequestResponse(json);
      }
    } catch (e) {
      print('Error processing message: $e');
    }
  }

  void _handleRequestResponse(Map<String, dynamic> json) {
    final requestId = json['request_id'].toString();
    final completer = _pendingRequests[requestId];

    if (completer != null) {
      if (json['success'] == true) {
        completer.complete(SendMessageResponse.fromJson(json));
      } else {
        completer.completeError(Exception(json['error'] ?? 'defaultError'));
      }
      _pendingRequests.remove(requestId);
    }
  }

  void _handleError(dynamic error) {
    print('WebSocket error: $error');
    _streamController.addError(error);
    _cleanupPendingRequests(error);
  }

  void _handleDisconnection() {
    print('WebSocket connection closed');
    _cleanupPendingRequests(Exception('Connection closed'));
    disconnect();
  }

  void _cleanupPendingRequests(dynamic error) {
    for (final completer in _pendingRequests.values) {
      completer.completeError(error);
    }
    _pendingRequests.clear();
  }

  @override
  Future<ApiResult<SendMessageResponse>> sendMessage(
      SendMessageRequestBody request) async {
    if (!_isConnected) {
      return ApiResult.failure(ErrorHandler.handle(Exception('Not connected')));
    }

    try {
      final messageToSend = {
        'message': request.message,
        'conversation_id': request.conversationId,
        'user_id': request.userId,
      };

      print('Sending message: ${jsonEncode(messageToSend)}');
      _channel!.sink.add(jsonEncode(messageToSend));

      await Future.delayed(const Duration(milliseconds: 300));
      final response = SendMessageResponse(
        success: true,
        message: 'Message sent (async)',
        messageData: Message(
          id: 0,
          text: request.message,
          time: DateTime.now(),
          sender: SenderInfo(
            id: request.userId,
            username: '',
            image: '',
            bio: '',
          ),
        ),
        conversationId: request.conversationId,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<SendMessageResponse>> createNewConversation({
    required int recipientId,
    required String message,
    required int userId,
  }) async {
    if (!_isConnected) {
      return ApiResult.failure(ErrorHandler.handle(Exception('Not connected')));
    }

    final requestId = (++_requestId).toString();
    final completer = Completer<SendMessageResponse>();
    _pendingRequests[requestId] = completer;

    try {
      final messageToSend = {
        'action': 'create_conversation',
        'request_id': requestId,
        'recipient_id': recipientId,
        'message': message,
        'user_id': userId,
      };

      print('Creating conversation: ${jsonEncode(messageToSend)}');
      _channel!.sink.add(jsonEncode(messageToSend));

      final response = await completer.future.timeout(
        const Duration(seconds: 20),
        onTimeout: () => throw TimeoutException('Request timeout'),
      );

      return ApiResult.success(response);
    } catch (error) {
      _pendingRequests.remove(requestId);
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  @override
  void disconnect() {
    _subscription?.cancel();
    _channel?.sink.close();
    _streamController.close();
    _cleanupPendingRequests(Exception('Manual disconnection'));
    _isConnected = false;
  }

  @override
  Stream<String> get messageStream => _streamController.stream;
}
