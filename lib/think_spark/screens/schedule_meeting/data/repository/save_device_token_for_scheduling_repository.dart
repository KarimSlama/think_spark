import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/save_device_notification_token_request.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/save_device_response.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/network/schedule_meeting_service.dart';

class SaveDeviceTokenForSchedulingRepository {
  final ScheduleMeetingService scheduleMeetingService;
  const SaveDeviceTokenForSchedulingRepository(this.scheduleMeetingService);

  Future<ApiResult<SaveDeviceResponse>> saveDeviceToken(
      SaveDeviceNotificationTokenRequest request) async {
    try {
      final response =
          await scheduleMeetingService.saveDeviceNotificationToken(request);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
