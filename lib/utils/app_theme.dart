import 'package:flutter/material.dart';
import 'package:food_delivary_app/utils/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
        textTheme: TextTheme(
          
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      );
}