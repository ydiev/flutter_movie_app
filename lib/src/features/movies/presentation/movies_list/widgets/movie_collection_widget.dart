import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
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
            if (title != null) _Title(title: title!),
            CarouselWidget(
              movies: movies,
              size: isMain ? CarouselSize.big : CarouselSize.small,
            ),
          ],
        ),
      );
}

class _Title extends StatelessWidget {
  const _Title({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.spacing16,
          vertical: AppSpacing.spacing4,
        ),
        child: Text(
          title,
          style: AppTextStyles.movieSetTitleTextStyle,
        ),
      );
}
