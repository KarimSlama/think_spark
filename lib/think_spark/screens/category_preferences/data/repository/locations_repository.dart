import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/model/preferences_response.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/network/service/preferences_service.dart';

class LocationsRepository {
  final PreferencesService _preferencesService;

  LocationsRepository(this._preferencesService);

  Future<ApiResult<List<PreferencesResponse>>> getLocations() async {
    try {
      final response = await _preferencesService.getLocations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
