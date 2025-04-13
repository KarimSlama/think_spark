import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/login/data/model/login_request_body.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_response.dart';

class LoginRepository {
  final RegisterService _registerService;

  LoginRepository(this._registerService);

  Future<ApiResult<RegisterResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _registerService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      print('repository login error ${ErrorHandler.handle(error)}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
