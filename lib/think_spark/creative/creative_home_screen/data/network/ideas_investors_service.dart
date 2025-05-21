import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/model/investors_response.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/network/ideas_investors_constants.dart';

part 'ideas_investors_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class IdeasInvestorsService {
  factory IdeasInvestorsService(Dio dio, {String baseUrl}) =
      _IdeasInvestorsService;

  @GET(IdeasInvestorsConstants.investors)
  Future<InvestorsResponse> fetchInvestors();
}
