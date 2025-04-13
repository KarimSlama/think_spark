import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(List<IdeaResponse> data) = Success;
  const factory HomeState.error({required String error}) = Error;
}
