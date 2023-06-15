import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const movieSetTitleTextStyle = TextStyle(
    fontSize: 26,
    color: AppColors.textColor,
  );
  static const movieInformativeTextStyle = TextStyle(
    fontSize: 20,
    color: AppColors.textColor,
  );
  static const movieBadgeTextStyle = TextStyle(
    fontSize: 12,
    color: AppColors.textColor,
  );
  static const introTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.textColor,
  );
  static const movieCoverTitleTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: AppColors.textLighterColor,
  );
  static const errorMessageTextStyle = TextStyle(
    fontSize: 18,
    fontStyle: FontStyle.normal,
    color: Colors.red,
  );
}
