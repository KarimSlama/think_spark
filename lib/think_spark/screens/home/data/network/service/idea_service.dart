import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_request_body.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/data/network/idea_constants.dart';

part 'idea_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class IdeaService {
  factory IdeaService(Dio dio, {String baseUrl}) = _IdeaService;

  @GET(IdeaConstants.ideas)
  Future<List<IdeaResponse>> fetchAllIdeas();

  @GET(IdeaConstants.ideas)
  Future<List<IdeaResponse>> fetchFavoriteIdeas(
      @Query("ids") List<String> ideaIds);

  @GET(IdeaConstants.searchIdeas)
  Future<List<IdeaResponse>> searchIdeas(@Query('q') String? query);

  @PATCH(IdeaConstants.updateIdea)
  Future<IdeaResponse> updateIdea(
      @Path("id") int ideaId, @Body() IdeaRequestBody ideaRequest);
}
