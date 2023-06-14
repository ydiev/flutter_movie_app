import 'package:auto_size_text/auto_size_text.dart';
import 'package:eden_movies_app/src/config/theme/colors.dart';
import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';

const _imageRatio = 500 / 330;

enum CarouselSize {
  small(300),
  big(400);

  const CarouselSize(this.height);

  final double height;
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    required this.movies,
    this.size = CarouselSize.big,
    this.title,
  });

  final List<MovieEntity> movies;
  final CarouselSize size;
  final String? title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.spacing12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.spacing16,
                  vertical: AppSpacing.spacing4,
                ),
                child: Text(
                  title!,
                  style: AppTextStyles.movieSetTitleTextStyle,
                ),
              ),
            SizedBox(
              height: size.height,
              child: ListView.separated(
                separatorBuilder: (context, _) =>
                    const SizedBox(width: AppSpacing.spacing8),
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return Container(
                    margin: _getMargin(index, movies.length),
                    child: _CarouselItem(
                      title: movie.title,
                      posterUrl: movie.posterUrl,
                      size: size,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );

  EdgeInsets _getMargin(int index, int lastIndex) {
    if (index == 0) {
      return const EdgeInsets.only(left: AppSpacing.spacing8);
    } else if (index == lastIndex - 1) {
      return const EdgeInsets.only(right: AppSpacing.spacing8);
    } else {
      return EdgeInsets.zero;
    }
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem({
    required this.title,
    this.posterUrl,
    this.size = CarouselSize.big,
  });

  final String title;
  final String? posterUrl;
  final CarouselSize size;

  @override
  Widget build(BuildContext context) => Container(
        height: size.height,
        width: size.height / _imageRatio,
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(AppSpacing.spacing12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.spacing12),
          child: Image.network(
            posterUrl ?? '',
            fit: BoxFit.cover,
            errorBuilder: (context, error, _) =>
                _NoImageMovieItem(title: title),
            loadingBuilder: (context, child, progress) =>
                progress == null ? child : const LinearProgressIndicator(),
            semanticLabel: title,
          ),
        ),
      );
}

class _NoImageMovieItem extends StatelessWidget {
  const _NoImageMovieItem({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.spacing12),
          child: AutoSizeText(
            title,
            maxLines: 2,
            style: AppTextStyles.movieCoverTitleTextStyle,
          ),
        ),
      );
}
