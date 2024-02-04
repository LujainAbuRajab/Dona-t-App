import 'package:flutter/material.dart';
import 'package:food_delivary_app/utils/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: AppColors.gray,
                  width: 0.5,
                ),
              ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.gray,
              width: 0.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.darkPink,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: AppColors.gray.withOpacity(0.5),
                width: 0.5,
              ),
            ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      );
}