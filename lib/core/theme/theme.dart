import 'package:flutter/material.dart';
import 'package:think_spark/core/theme/custom_themes/spark_appbar_theme.dart';
import 'package:think_spark/core/theme/custom_themes/spark_bottom_sheet.dart';
import 'package:think_spark/core/theme/custom_themes/spark_check_box_theme.dart';
import 'package:think_spark/core/theme/custom_themes/spark_chip_theme.dart';
import 'package:think_spark/core/theme/custom_themes/spark_elevated_button_theme.dart';
import 'package:think_spark/core/theme/custom_themes/spark_outlined_button_theme.dart';
import 'package:think_spark/core/theme/custom_themes/spark_text_field_theme.dart';
import 'package:think_spark/core/theme/custom_themes/spark_text_theme.dart';

class SparkTheme {
  SparkTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: SparkTextTheme.lighTextTheme,
      chipTheme: SparkChipTheme.lightChipThemeData,
      appBarTheme: SparkAppbarTheme.lightAppbarTheme,
      checkboxTheme: SparkCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: SparkBottomSheet.lightBottomSheetTheme,
      outlinedButtonTheme: SparkOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: SparkElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: SparkTextFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: SparkTextTheme.darkTextTheme,
      chipTheme: SparkChipTheme.darkChipThemeData,
      appBarTheme: SparkAppbarTheme.darkAppbarTheme,
      checkboxTheme: SparkCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: SparkBottomSheet.darkBottomSheetTheme,
      outlinedButtonTheme: SparkOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: SparkElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: SparkTextFieldTheme.darkInputDecorationTheme);
}
