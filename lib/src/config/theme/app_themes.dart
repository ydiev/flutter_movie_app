import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.appBarBackground,
    foregroundColor: AppColors.textColor,
  ),
  scaffoldBackgroundColor: AppColors.backgroundColor,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.accentColor),
  useMaterial3: true,
);
