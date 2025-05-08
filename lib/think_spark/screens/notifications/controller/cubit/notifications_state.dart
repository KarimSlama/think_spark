import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = Initial;
  const factory NotificationsState.notificationLoading() = NotificationLoading;
  const factory NotificationsState.notificationError(String error) = NotificationError;
  const factory NotificationsState.notificationSuccess({required List<Map<String, dynamic>> notifications}) =
      NotificationSuccess;
}
