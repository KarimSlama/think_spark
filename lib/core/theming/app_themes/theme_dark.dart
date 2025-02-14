import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:think_spark/core/theming/app_colors/app_colors.dart';

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: AppColors.black,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.white,
    primary: AppColors.blue,
    secondary: AppColors.black,
    error: AppColors.red,
    onPrimary: AppColors.darkGrey,
    onSecondary: AppColors.darkGrey,
    onSurface: AppColors.darkGrey,
    surface: AppColors.black,
    onError: AppColors.white,
    brightness: Brightness.dark,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.black,
    elevation: 0,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(color: AppColors.white, size: 26),
    toolbarTextStyle: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 14,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.poppins(
        color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w500),
  ),
);
