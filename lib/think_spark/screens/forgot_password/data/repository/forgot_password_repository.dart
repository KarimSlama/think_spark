import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/forgot_password_request.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/password_response.dart';

class ForgotPasswordRepository {
  final RegisterService _registerService;

  ForgotPasswordRepository(this._registerService);

  Future<ApiResult<PasswordResponse>> addForgotPasswordIdentifier(
      ForgotPasswordRequest forgotPasswordRequest) async {
    try {
      final response =
          await _registerService.forgotPassword(forgotPasswordRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
