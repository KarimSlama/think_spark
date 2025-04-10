import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/core/networking/register/register_service.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/password_response.dart';
import 'package:think_spark/think_spark/screens/verify_code/data/model/code_request.dart';

class CodeRepository {
  final RegisterService _registerService;

  CodeRepository(this._registerService);

  Future<ApiResult<PasswordResponse>> verifyCode(
      CodeRequest codeRequest) async {
    try {
      final response = await _registerService.verifyCode(codeRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
