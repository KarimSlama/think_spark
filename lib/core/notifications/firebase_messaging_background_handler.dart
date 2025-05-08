import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:think_spark/core/notifications/local_notification_service.dart';
import 'package:think_spark/firebase_options.dart';

class FirebaseMessagingBackgroundHandler {
  static Future<void> handle(RemoteMessage message) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await LocalNotificationService.show(message);
  }
}