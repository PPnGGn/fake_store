import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    cardColor: AppColors.white,
    colorScheme: const ColorScheme.light(
      primary: AppColors.purple3E0CA9,
      secondary: AppColors.green03DAC6,
      surface: Colors.white,
      error: AppColors.redB00020,
    ),
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.black,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.purple3E0CA9,
      unselectedItemColor: Colors.black54,
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
    bodySmall: TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple3E0CA9,
        foregroundColor: AppColors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Montserrat',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.black12,
      cardColor: AppColors.black1E,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.purpleBB86FC,
        secondary: AppColors.green03DAC6,
        surface: AppColors.black1E,
        error: AppColors.redCF6679,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.black1E,
        selectedItemColor: AppColors.purpleBB86FC,
        unselectedItemColor: AppColors.gray82,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
      ),
      appBarTheme: const AppBarTheme(
        surfaceTintColor: AppColors.black12,
        backgroundColor: AppColors.black12,
        foregroundColor: AppColors.white,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodySmall:  TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),

      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purpleBB86FC,
        foregroundColor: AppColors.black,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
  );
}
