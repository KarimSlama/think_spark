import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/core/service_locator/dependency_injection.dart';
import 'package:think_spark/think_spark_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ThinkSparkApp(appRouter: AppRouter()),
  );
}
