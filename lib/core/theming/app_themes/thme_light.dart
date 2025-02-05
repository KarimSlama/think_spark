import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';

ThemeData themeLight = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.black,
    primary: AppColors.blue,
    secondary: AppColors.black,
    error: AppColors.red,
    onPrimary: AppColors.darkGrey,
    onSecondary: AppColors.darkGrey,
    onSurface: AppColors.darkGrey,
    onError: AppColors.white,
    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(color: AppColors.black, size: 26),
    toolbarTextStyle: GoogleFonts.poppins(
      color: AppColors.black,
      fontSize: 14,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.black,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.black,
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.poppins(
        color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w500),
  ),
);
