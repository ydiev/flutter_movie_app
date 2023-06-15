import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:flutter/material.dart';

class MovieTitleWidget extends StatelessWidget {
  const MovieTitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.movieCoverTitleTextStyle,
        ),
      );
}
