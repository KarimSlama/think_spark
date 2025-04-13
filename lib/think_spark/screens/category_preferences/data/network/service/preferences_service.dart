import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/model/preferences_response.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/network/preferences_constants.dart';

part 'preferences_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class PreferencesService {
  factory PreferencesService(Dio dio, {String baseUrl}) = _PreferencesService;

  @GET(PreferencesConstants.categories)
  Future<List<PreferencesResponse>> getCategories();

  @GET(PreferencesConstants.filters)
  Future<List<PreferencesResponse>> getFilters();

  @GET(PreferencesConstants.locations)
  Future<List<PreferencesResponse>> getLocations();
}
