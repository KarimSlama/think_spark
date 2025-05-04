import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/categories/data/model/categoreis_with_ideas_response.dart';
import 'package:think_spark/think_spark/screens/categories/data/network/categories_constants.dart';
part 'categories_related_ideas_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CategoriesRelatedIdeasService {
  factory CategoriesRelatedIdeasService(Dio dio, {String baseUrl}) =
      _CategoriesRelatedIdeasService;

  @GET(CategoriesConstants.categoriesRelatedIdeas)
  Future<List<CategoreisWithIdeasResponse>> getCategoriesRelatedIdeas();
}
