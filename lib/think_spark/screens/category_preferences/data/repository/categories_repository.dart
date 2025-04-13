import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/model/preferences_response.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/network/service/preferences_service.dart';

class CategoriesRepository {
  final PreferencesService _preferencesService;

  CategoriesRepository(this._preferencesService);

  Future<ApiResult<List<PreferencesResponse>>> getCategories() async {
    try {
      final response = await _preferencesService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
