import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/routing/app_router.dart';
import 'package:think_spark/think_spark_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ThinkSparkApp(appRouter: AppRouter()),
  );
}
