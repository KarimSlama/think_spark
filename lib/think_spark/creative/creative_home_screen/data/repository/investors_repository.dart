import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/model/investors_response.dart';
import 'package:think_spark/think_spark/creative/creative_home_screen/data/network/ideas_investors_service.dart';

class InvestorsRepository {
  final IdeasInvestorsService _ideasInvestorsService;
  InvestorsRepository(this._ideasInvestorsService);

  Future<ApiResult<InvestorsResponse>> fetchAllInvestors() async {
    try {
      final result = await _ideasInvestorsService.fetchInvestors();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
