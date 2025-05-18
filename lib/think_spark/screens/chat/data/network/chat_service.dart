import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversations_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_request_body.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/send_message_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/chat_contants_ep.dart';

part 'chat_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ChatService {
  factory ChatService(Dio dio, {String baseUrl}) = _ChatService;

  @POST(ChatContantsEp.sendMessage)
  Future<SendMessageResponse> sendMessage(
      @Body() SendMessageRequestBody sendMessageRequestBody);

  @GET(ChatContantsEp.conversations)
  Future<ConversationsResponse> getConversations();
}
