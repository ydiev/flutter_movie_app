import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) => label != null
      ? Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.spacing4),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.textColor),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            label!,
            style: AppTextStyles.movieBadgeTextStyle,
          ),
        )
      : const SizedBox();
}
