import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
class InvestorNavigationState<T> with _$InvestorNavigationState<T> {
  const factory InvestorNavigationState.initial() = _Initial;
  const factory InvestorNavigationState.changed(int index) = Changed;
}
