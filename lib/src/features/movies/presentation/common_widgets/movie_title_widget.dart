import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:flutter/material.dart';

class MovieTitleWidget extends StatelessWidget {
  const MovieTitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) => Center(
        child: DefaultTextStyle(
          style: AppTextStyles.movieCoverTitleTextStyle,
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      );
}
