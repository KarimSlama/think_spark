import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/chat/data/model/conversations_response.dart';
import 'package:think_spark/think_spark/screens/chat/data/network/chat_service.dart';

class ConversationsRepository {
  final ChatService chatService;

  const ConversationsRepository(this.chatService);

  Future<ApiResult<ConversationsResponse>> fetchConversations() async {
    try {
      final response = await chatService.getConversations();
      print('response with conversations repo ${response.message}');
      return ApiResult.success(response);
    } catch (error) {
      print('error with conversations repo ${ErrorHandler.handle(error).apiErrorModel.message}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
