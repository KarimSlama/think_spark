import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/categories/data/model/categoreis_with_ideas_response.dart';
import 'package:think_spark/think_spark/screens/categories/data/network/categories_related_ideas_service.dart';

class CategoriesWithIdeasRelatedRepository {
  final CategoriesRelatedIdeasService _categoriesService;

  CategoriesWithIdeasRelatedRepository(this._categoriesService);

  Future<ApiResult<List<CategoreisWithIdeasResponse>>> getCategories() async {
    try {
      final response = await _categoriesService.getCategoriesRelatedIdeas();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
