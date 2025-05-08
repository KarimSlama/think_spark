import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/save_device_notification_token_request.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/save_device_response.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_meeting_response.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_request_body.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/network/meeting_constants_ep.dart';

part 'schedule_meeting_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ScheduleMeetingService {
  factory ScheduleMeetingService(Dio dio, {String baseUrl}) =
      _ScheduleMeetingService;

  @GET(MeetingConstantsEp.myMeetings)
  Future<ScheduleMeetingResponse> fetchAllScheduleMeetings();

  @POST(MeetingConstantsEp.scheduleMeeting)
  Future<ScheduleMeetingResponse> scheduleMeeting(
      @Body() ScheduleRequestBody scheduleRequestBody);

  @POST(MeetingConstantsEp.saveDeviceNotificationToken)
  Future<SaveDeviceResponse> saveDeviceNotificationToken(
      @Body() SaveDeviceNotificationTokenRequest saveDeviceNotificationTokenRequest);
}
