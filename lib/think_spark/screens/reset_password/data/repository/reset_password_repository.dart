import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/password_response.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/model/reset_password_request.dart';

class ResetPasswordRepository {
  final RegisterService _registerService;

  ResetPasswordRepository(this._registerService);

  Future<ApiResult<PasswordResponse>> resetPassword(
      ResetPasswordRequest resetPasswordRequest) async {
    try {
      final response = await _registerService.resetPassword(resetPasswordRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
