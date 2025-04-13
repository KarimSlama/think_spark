import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/data/network/service/idea_service.dart';

class IdeaRepository {
  final IdeaService _ideaService;

  IdeaRepository(this._ideaService);

  Future<ApiResult<List<IdeaResponse>>> fetchIdeas() async {
    try {
      final response = await _ideaService.fetchAllIdeas();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
