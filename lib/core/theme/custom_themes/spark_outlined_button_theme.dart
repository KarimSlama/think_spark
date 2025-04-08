import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class SparkOutlinedButtonTheme {
  SparkOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: SparkColors.darkBlue,
      side: BorderSide(color: SparkColors.darkBlue),
      textStyle: TextStyle(
          fontSize: 16, color: SparkColors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14)),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: SparkColors.white,
      side: BorderSide(color: SparkColors.darkBlue),
      textStyle: TextStyle(
          fontSize: 16, color: SparkColors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(14)),
    ),
  );
}
