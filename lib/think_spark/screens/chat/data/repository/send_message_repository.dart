import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_request_body.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/web_socket/we_socket_service.dart';

class SendMessageRepository {
  final WebSocketService webSocketService;

  const SendMessageRepository(this.webSocketService);

  void connect({required int userId}) =>
      webSocketService.connect(userId: userId);
  void disconnect() => webSocketService.disconnect();
  Future<ApiResult<SendMessageResponse>> sendMessage(
          SendMessageRequestBody request) =>
      webSocketService.sendMessage(request);

  Future<ApiResult<SendMessageResponse>> createNewConversation({
    required int recipientId,
    required String message,
    required int userId,
  }) =>
      webSocketService.createNewConversation(
        recipientId: recipientId,
        message: message,
        userId: userId,
      );

  Stream<String> get messageStream => webSocketService.messageStream;
}
