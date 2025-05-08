import 'dart:convert';

import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:uuid/uuid.dart';

class NotificationLocalData {
  static Future<void> saveNotification(
      Map<String, dynamic> notification) async {
    try {
      if (!notification.containsKey('id')) {
        notification['id'] = Uuid().v4();
      }

      final existingNotifications = await getStoredNotifications();

      existingNotifications.insert(0, notification);

      final encoded = json.encode(existingNotifications);
      await SharedPreference.setData(Constants.notification , encoded);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<void> saveNotificationList(
      List<Map<String, dynamic>> notifications) async {
    try {
      final encoded = json.encode(notifications);
      await SharedPreference.setData(Constants.notification, encoded);
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<List<Map<String, dynamic>>> getStoredNotifications() async {
    try {
      final jsonData = await SharedPreference.getString(Constants.notification);
      if (jsonData != null && jsonData.isNotEmpty) {
        final decoded = json.decode(jsonData);

        if (decoded is List) {
          return decoded.map<Map<String, dynamic>>((item) {
            if (item is Map) {
              return item.cast<String, dynamic>();
            }
            return {};
          }).toList();
        } else if (decoded is Map) {
          return [decoded.cast<String, dynamic>()];
        }
      }
    } catch (e) {
      throw Exception(e);
    }
    return [];
  }
}
