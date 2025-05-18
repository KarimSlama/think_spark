import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_response.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.success(ProfileResponse profile) =
      Success;
  const factory ProfileState.error(String message) = Error;
  const factory ProfileState.modeChanged(bool isDark) = ModeChanged;
  const factory ProfileState.stepChanged({required int stepIndex}) =
      StepChanged;
}
