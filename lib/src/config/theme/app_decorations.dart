import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

const Decoration infoSectionDecoration = BoxDecoration(
  color: AppColors.backgroundColor,
  boxShadow: [
    BoxShadow(
      color: AppColors.backgroundColor,
      spreadRadius: 20,
      blurRadius: 30,
      offset: Offset(0, -10),
    ),
  ],
);
