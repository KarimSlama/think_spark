import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onBackPressed;
  final String btnText;
  final double width;
  final Color? color;
  final Color? textColor;

  const ButtonWidget(
      {super.key,
      required this.onBackPressed,
      required this.btnText,
      required this.width,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onBackPressed();
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color ?? SparkColors.darkBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(Size(width, 55.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: textColor ?? SparkColors.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
