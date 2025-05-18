import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:think_spark/core/common/local/notification_data_local.dart';
import 'package:think_spark/core/helpers/helper_functions.dart';
import 'package:think_spark/core/notifications/firebase_messaging_background_handler.dart';
import 'package:think_spark/core/notifications/local_notification_service.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/model/save_device_notification_token_request.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/repository/save_device_token_for_scheduling_repository.dart';

class FirebaseMessagingService {
  static Future<void> initialize(
      final SaveDeviceTokenForSchedulingRepository repository) async {
    final messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(alert: true, badge: true, sound: true);

    String? token = await messaging.getToken();

    if (token == null || !await _validateFcmToken(token)) {
      token = await _refreshFcmToken();
    }

    if (token != null) {
      await _saveTokenToServer(repository, token);
    }


    messaging.onTokenRefresh.listen((newToken) async {
      await _saveTokenToServer(repository, newToken);
    });

    FirebaseMessaging.onMessage.listen((message) async {
      LocalNotificationService.show(message);
      final body = message.notification?.body ?? '';
      final userName = SparkHelperFunctions.extractUserName(body);

      print('Notification: ${message.notification?.title}');
      print('Notification: ${message.notification?.body}');

      await NotificationLocalData.saveNotification({
        'title': message.notification?.title,
        'body': message.notification?.body,
        'user': userName,
        'time': DateTime.now().toIso8601String(),
      });
    });

    FirebaseMessaging.onBackgroundMessage(
      FirebaseMessagingBackgroundHandler.handle,
    );
  }

  

  static Future<void> _saveTokenToServer(
      SaveDeviceTokenForSchedulingRepository repository, String token) async {
    try {
      final request = SaveDeviceNotificationTokenRequest(deviceToken: token);
      print('Token $token');
      await repository.saveDeviceToken(request);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<bool> _validateFcmToken(String token) async {
    return token.length > 30;
  }

  static Future<String?> _refreshFcmToken() async {
    try {
      await FirebaseMessaging.instance.deleteToken();
      return await FirebaseMessaging.instance.getToken();
    } catch (e) {
      return null;
    }
  }
}
