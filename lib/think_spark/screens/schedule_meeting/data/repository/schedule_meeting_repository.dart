import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_meeting_response.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_request_body.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/network/schedule_meeting_service.dart';

class ScheduleMeetingRepository {
  final ScheduleMeetingService scheduleMeetingService;

  ScheduleMeetingRepository(this.scheduleMeetingService);

  Future<ApiResult<ScheduleMeetingResponse>> getScheduleMeeting() async {
    try {
      final response = await scheduleMeetingService.fetchAllScheduleMeetings();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ScheduleMeetingResponse>> addScheduleMeeting(
      ScheduleRequestBody scheduleRequestBody) async {
    try {
      final response =
          await scheduleMeetingService.scheduleMeeting(scheduleRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
