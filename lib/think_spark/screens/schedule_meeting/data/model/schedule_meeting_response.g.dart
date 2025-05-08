// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_meeting_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleMeetingResponse _$ScheduleMeetingResponseFromJson(
        Map<String, dynamic> json) =>
    ScheduleMeetingResponse(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      schedule: (json['data'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduleMeetingResponseToJson(
        ScheduleMeetingResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.schedule,
    };

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      id: (json['id'] as num).toInt(),
      ideaId: (json['idea'] as num).toInt(),
      investor: json['investor'] as String,
      creative: json['creative'] as String,
      image: json['image'] as String,
      ideaTitle: json['idea_title'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      scheduledDateTime: DateTime.parse(json['scheduled_datetime'] as String),
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'id': instance.id,
      'idea': instance.ideaId,
      'investor': instance.investor,
      'creative': instance.creative,
      'idea_title': instance.ideaTitle,
      'image': instance.image,
      'created_at': instance.createdAt.toIso8601String(),
      'scheduled_datetime': instance.scheduledDateTime.toIso8601String(),
    };
