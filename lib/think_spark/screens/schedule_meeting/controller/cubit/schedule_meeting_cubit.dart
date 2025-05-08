import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/controller/cubit/schedule_meeting_state.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/schedule_request_body.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/repository/schedule_meeting_repository.dart';

class ScheduleMeetingCubit extends Cubit<ScheduleMeetingState> {
  final ScheduleMeetingRepository scheduleMeetingRepository;
  ScheduleMeetingCubit(this.scheduleMeetingRepository)
      : super(ScheduleMeetingState.initial());

  void fetchSchedulingMeetings() async {
    emit(ScheduleMeetingState.loading());
    final result = await scheduleMeetingRepository.getScheduleMeeting();

    result.when(success: (result) {
      emit(ScheduleMeetingState.success(response: result));
    }, failure: (error) {
      emit(ScheduleMeetingState.error(message: error.toString()));
    });
  }

  Future<void> scheduleMeeting(ScheduleRequestBody scheduleRequestBody) async {
    emit(ScheduleMeetingState.scheduleMeetingLoading());
    final result =
        await scheduleMeetingRepository.addScheduleMeeting(scheduleRequestBody);

    result.when(success: (result) {
      emit(ScheduleMeetingState.scheduleMeetingSuccess(response: result));
    }, failure: (error) {
      emit(ScheduleMeetingState.scheduleMeetingError(error: error.toString()));
    });
  }
}
