import 'package:flutter/material.dart';

class AppColors {
  static const Color darkBlue = Color(0xFF001A83);
  static const Color blue = Color(0xFF002DE3);
  static const Color darkMode = Color(0xFF375FFF);
  static const Color light = Color(0xFF879FFF);
  static const Color danger = Color(0xFFE94242);
  static const Color warning = Color(0xFFFDCF41);
  static const Color success = Color(0xFF2CC069);
  static const Color safe = Color(0xFF7BCBCF);
  static const Color background = Color(0xFFD2D5F9);
  static const Color active = Color(0xFF0F1828);
  static const Color dark = Color(0xFF152033);
  static const Color body = Color(0xFF1B2B48);
  static const Color weak = Color(0xFFA4A4A4);
  static const Color disabled = Color(0xFFADB5BD);
  static const Color line = Color(0xFFEDEDED);
  static const Color offWhite = Color(0xFFF7F7FC);
  static const Color white = Color(0xFFFFFFFF);
}

class AppTextStyles {
  static const TextStyle heading_1 = TextStyle(
    fontSize: 32,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: AppColors.active,
  );

  static const TextStyle heading_2 = TextStyle(
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: AppColors.active,
  );

  static const TextStyle subHeading_1 = TextStyle(
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: AppColors.active,
    height: 30 / 18,
  );

  static const TextStyle subHeading_2 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: AppColors.active,
    height: 28 / 16,
  );

  static const TextStyle body_1 = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: AppColors.active,
    height: 24 / 14,
  );

  static final TextStyle button = subHeading_2.copyWith(
    color: Colors.white,
  );
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.blue,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: 'Montserrat', // Global font family

    textTheme: const TextTheme(
      headlineMedium: AppTextStyles.heading_2, // For large headers
      bodyLarge: AppTextStyles.body_1, // For body text
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.blue),
        textStyle: WidgetStateProperty.all(AppTextStyles.button),
      ),
    ),
  );
}
