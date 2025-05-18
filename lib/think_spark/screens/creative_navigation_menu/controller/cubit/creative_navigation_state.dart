import 'package:freezed_annotation/freezed_annotation.dart';

part 'creative_navigation_state.freezed.dart';

@freezed
class CreativeNavigationState<T> with _$CreativeNavigationState<T> {
  const factory CreativeNavigationState.initial() = _Initial;
  const factory CreativeNavigationState.navigationChanged(int index) = NavigationChanged;
}