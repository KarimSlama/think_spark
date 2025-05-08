import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_meeting_response.dart';
part 'schedule_meeting_state.freezed.dart';

@freezed
class ScheduleMeetingState with _$ScheduleMeetingState {
  const factory ScheduleMeetingState.initial() = _Initial;
  const factory ScheduleMeetingState.loading() = Loading;
  const factory ScheduleMeetingState.success(
      {required ScheduleMeetingResponse response}) = Success;
  const factory ScheduleMeetingState.error({required String message}) = Error;

  const factory ScheduleMeetingState.scheduleMeetingLoading() = ScheduleMeetingLoading;
  const factory ScheduleMeetingState.scheduleMeetingSuccess({required ScheduleMeetingResponse response}) = ScheduleMeetingSuccess;
  const factory ScheduleMeetingState.scheduleMeetingError({required String error}) = ScheduleMeetingError;

}
