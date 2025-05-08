// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleRequestBody _$ScheduleRequestBodyFromJson(Map<String, dynamic> json) =>
    ScheduleRequestBody(
      ideaId: (json['idea_id'] as num).toInt(),
      scheduledDateTime: DateTime.parse(json['scheduled_datetime'] as String),
    );

Map<String, dynamic> _$ScheduleRequestBodyToJson(
        ScheduleRequestBody instance) =>
    <String, dynamic>{
      'idea_id': instance.ideaId,
      'scheduled_datetime': instance.scheduledDateTime.toIso8601String(),
    };
