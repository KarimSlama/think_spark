import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
part 'ideas_state.freezed.dart';

@freezed
class IdeasState with _$IdeasState {
  const factory IdeasState.initial() = _Initial;
  const factory IdeasState.loading() = Loading;
  const factory IdeasState.success(List<IdeaResponse>? data) = Success;
  const factory IdeasState.updateSuccess(IdeaResponse? data) = UpdateSuccess;
  const factory IdeasState.error({required String error}) = Error;

  const factory IdeasState.dsplayRow({required bool isRow}) = DisplayRow;

  const factory IdeasState.showRecordingUI() = ShowRecordingUI;
  const factory IdeasState.recordingInProgress() = RecordingInProgress;
  const factory IdeasState.recordingComplete(String recognizedText) =
      RecordingComplete;
  const factory IdeasState.recordingStopped() = RecordingStopped;
  const factory IdeasState.speechError(String errorMessage) = SpeechError;
}
