import 'package:json_annotation/json_annotation.dart';
part 'schedule_meeting_response.g.dart';

@JsonSerializable()
class ScheduleMeetingResponse{
  final int status;
  final String message;
  @JsonKey(name: 'data')
  final List<Schedule> schedule;

  ScheduleMeetingResponse({required this.status, required this.message, required this.schedule});

  factory ScheduleMeetingResponse.fromJson(Map<String,dynamic> json) => _$ScheduleMeetingResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleMeetingResponseToJson(this);
}

@JsonSerializable()
class Schedule {
  final int id;
  @JsonKey(name: 'idea')
  final int ideaId;
  final String investor;
  final String creative;
  @JsonKey(name: 'idea_title')
  final String ideaTitle;
  final String image;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'scheduled_datetime')
  final DateTime scheduledDateTime;

  Schedule(
      {required this.id,
      required this.ideaId,
      required this.investor,
      required this.creative,
      required this.image,
      required this.ideaTitle,
      required this.createdAt,
      required this.scheduledDateTime});

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

}
