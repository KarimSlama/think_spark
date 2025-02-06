import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/helpers/spacing.dart';
import 'package:think_spark/core/theming/app_strings/app_string.dart';

class ContinueWithWidget extends StatelessWidget {
  const ContinueWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12.w,
      children: [
        verticalLine(),
        Text(AppString.orContinueWith),
        verticalLine(),
      ],
    );
  }
}
