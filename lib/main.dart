import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/notifications/firebase_messaging_service.dart';
import 'package:think_spark/core/notifications/local_notification_service.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark/screens/schedule_meeting/data/repository/save_device_token_for_scheduling_repository.dart';
import 'package:think_spark/think_spark_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setUpGetIt();
  Constants.isDark = await SharedPreference.getBool(Constants.darkModeKey);
  await LocalNotificationService.initialize();
  await FirebaseMessagingService.initialize(
    getIt<SaveDeviceTokenForSchedulingRepository>(),
  );

  await checkIfUserLoggedIn();
  await ScreenUtil.ensureScreenSize();

  runApp(
    ThinkSparkApp(
      appRouter: AppRouter(),
      isDark: Constants.isDark,
    ),
  );
}

Future<bool> checkIfUserLoggedIn() async {
  try {
    String? userKey = await SharedPreference.getSecureString(Constants.userKey);
    String userType = await SharedPreference.getString(Constants.userTypeKey);
    if (userKey != null && userKey.isNotEmpty) {
      isLoggedUser = true;
      Constants.userKey = userKey;
      Constants.userRole = userType; 
      return true;
    } else {
      isLoggedUser = false;
      return false;
    }
  } catch (e) {
    return false;
  }
}
