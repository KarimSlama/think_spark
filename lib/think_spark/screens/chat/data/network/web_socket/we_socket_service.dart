import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_request_body.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_response.dart';

abstract class WebSocketService {
  void connect({required int userId});
  void disconnect();
  Future<ApiResult<SendMessageResponse>> sendMessage(
      SendMessageRequestBody request);
  Future<ApiResult<SendMessageResponse>> createNewConversation(
      {required int recipientId, required String message, required int userId});
  Stream<String> get messageStream;
}
