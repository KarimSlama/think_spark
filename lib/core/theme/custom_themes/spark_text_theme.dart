import 'package:flutter/material.dart';
import 'package:think_spark/core/constants/spark_colors.dart';

class SparkTextTheme {
  SparkTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lighTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: SparkColors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: SparkColors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: SparkColors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: SparkColors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: SparkColors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: SparkColors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: SparkColors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: SparkColors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: SparkColors.black.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: SparkColors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: SparkColors.black.withValues(alpha: 0.5)),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: SparkColors.light),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: SparkColors.light),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: SparkColors.light),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: SparkColors.light),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: SparkColors.light),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: SparkColors.light),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: SparkColors.light),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: SparkColors.light),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: SparkColors.light.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: SparkColors.light),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: SparkColors.light.withValues(alpha: 0.5)),
  );
}
