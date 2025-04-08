import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/core/networking/register/register_api_constants.dart';
import 'package:think_spark/think_spark/screens/login/data/model/login_request_body.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_request_body.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_response.dart';

part 'register_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class RegisterService {
  factory RegisterService(Dio dio, {String baseUrl}) = _RegisterService;

  @POST(RegisterApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody);

  @POST(RegisterApiConstants.login)
  Future<RegisterResponse> login(@Body() LoginRequestBody loginRequestBody);
}
