import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_device_notification_token_request.g.dart';

@JsonSerializable()
class SaveDeviceNotificationTokenRequest {
  @JsonKey(name: 'device_token')
  final String deviceToken;

  SaveDeviceNotificationTokenRequest({required this.deviceToken});

  factory SaveDeviceNotificationTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveDeviceNotificationTokenRequestFromJson(json);
}