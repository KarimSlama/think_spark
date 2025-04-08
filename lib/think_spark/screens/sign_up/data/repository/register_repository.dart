import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_request_body.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_response.dart';

class RegisterRepository {
  final RegisterService _registerService;

  RegisterRepository(this._registerService);

  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _registerService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
