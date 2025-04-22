import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/data/network/service/idea_service.dart';

class IdeaRepository {
  final IdeaService _ideaService;

  IdeaRepository(this._ideaService);

  Future<ApiResult<List<IdeaResponse>>> fetchIdeasAndFavorites(
      {List<String>? ids}) async {
    try {
      final response = ids != null && ids.isNotEmpty
          ? await _ideaService.fetchFavoriteIdeas(ids)
          : await _ideaService.fetchAllIdeas();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<IdeaResponse>>> searchIdeas(String? query) async {
    try {
      final response = await _ideaService.searchIdeas(query);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
