import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_device_response.g.dart';

@JsonSerializable()
class SaveDeviceResponse {
  final String message;

  SaveDeviceResponse({required this.message});

  Map<String, dynamic> toJson() => _$SaveDeviceResponseToJson(this);

  factory SaveDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveDeviceResponseFromJson(json);
}
