import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_request_body.g.dart';
@JsonSerializable()
class ScheduleRequestBody {
  @JsonKey(name: 'idea_id')
  final int ideaId;
  @JsonKey(name: 'scheduled_datetime')
  final DateTime scheduledDateTime;

  ScheduleRequestBody({required this.ideaId, required this.scheduledDateTime});

  Map<String, dynamic> toJson() => _$ScheduleRequestBodyToJson(this);
}
