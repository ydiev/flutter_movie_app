import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:eden_movies_app/src/features/movies/presentation/common_widgets/movie_title_widget.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movies_list/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';

class MovieCollectionWidget extends StatelessWidget {
  const MovieCollectionWidget({
    super.key,
    required this.movies,
    this.title,
    this.isMain = false,
  });

  final String? title;
  final List<MovieEntity> movies;
  final bool isMain;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.spacing12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null) MovieTitleWidget(title: title!),
            CarouselWidget(
              movies: movies,
              size: isMain ? CarouselSize.big : CarouselSize.small,
            ),
          ],
        ),
      );
}
