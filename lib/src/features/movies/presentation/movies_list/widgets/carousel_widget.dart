import 'package:auto_size_text/auto_size_text.dart';
import 'package:eden_movies_app/src/config/routing/app_router.dart';
import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  });

  final List<MovieEntity> movies;
  final CarouselSize size;

  @override
  Widget build(BuildContext context) {
    final itemsCount = movies.length;
    return SizedBox(
      height: size.height,
      child: ListView.separated(
        separatorBuilder: (context, _) =>
            const SizedBox(width: AppSpacing.spacing8),
        scrollDirection: Axis.horizontal,
        itemCount: itemsCount,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return _Item(
            title: movie.title,
            posterUrl: movie.posterUrl,
            size: size,
            isFirst: index == 0,
            isLast: index == itemsCount,
            onTap: () => context.goNamed(AppRoute.movie.name, extra: movie),
          );
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    this.posterUrl,
    this.size = CarouselSize.big,
    this.isFirst = false,
    this.isLast = false,
    this.onTap,
  });

  final String title;
  final String? posterUrl;
  final CarouselSize size;
  final bool isFirst;
  final bool isLast;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          margin: [
            if (isFirst) const EdgeInsets.only(left: AppSpacing.spacing8),
            if (isLast) const EdgeInsets.only(right: AppSpacing.spacing8),
            EdgeInsets.zero
          ].first,
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
              errorBuilder: (context, error, _) => _NoImageItem(title: title),
              loadingBuilder: (context, child, progress) =>
                  progress == null ? child : const LinearProgressIndicator(),
              semanticLabel: title,
            ),
          ),
        ),
      );
}

class _NoImageItem extends StatelessWidget {
  const _NoImageItem({required this.title});

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
