import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/category_preferences/data/model/preferences_response.dart';
part 'preferences_state.freezed.dart';

@freezed
class PreferencesState with _$PreferencesState {
  const factory PreferencesState({
    @Default([]) List<PreferencesResponse> categories,
    @Default([]) List<PreferencesResponse> filters,
    @Default([]) List<PreferencesResponse> locations,
    @Default(false) bool isLoading,
    String? error,
    @Default({}) Map<int, bool> selectedPreferences,
  }) = _PreferencesState;
}