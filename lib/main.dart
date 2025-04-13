import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await checkIfUserLoggedIn();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ThinkSparkApp(appRouter: AppRouter()),
  );
}


Future<bool> checkIfUserLoggedIn() async {
    try {
        String? userKey = await SharedPreference.getSecureString(Constants.userTokenKey);
        if (userKey != null && userKey.isNotEmpty) {
            isLoggedUser = true;
            Constants.userKey = userKey;
            return true;
        } else {
            isLoggedUser = false;
            return false;
        }
    } catch (e) {
        return false;
    }
}