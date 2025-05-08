import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/notification_data_local.dart';
import 'package:think_spark/think_spark/screens/notifications/controller/cubit/notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsState.initial()) {
    initNotifications();
  }
  List<Map<String, dynamic>> notifications = [];

  Future<void> initNotifications() async {
    emit(NotificationsState.notificationLoading());
    try {
      notifications = await NotificationLocalData.getStoredNotifications();
      emit(
          NotificationsState.notificationSuccess(notifications: notifications));
    } catch (e) {
      emit(NotificationsState.notificationError(e.toString()));
    }
  }

void removeNotificationById(String id) async {
    final updatedList = notifications.where((item) => item['id'] != id).toList();

    await NotificationLocalData.saveNotificationList(updatedList);

    notifications = updatedList;
    emit(NotificationsState.notificationSuccess(notifications: updatedList));
  }
}
