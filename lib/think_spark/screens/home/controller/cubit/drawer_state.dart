
import 'package:freezed_annotation/freezed_annotation.dart';
part 'drawer_state.freezed.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState.initial() = _Initial;
    const factory DrawerState.changed({required bool isDrawerOpen}) = Changed;

}
