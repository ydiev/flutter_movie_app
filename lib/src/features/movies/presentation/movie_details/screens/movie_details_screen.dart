import 'package:eden_movies_app/src/config/theme/app_colors.dart';
import 'package:eden_movies_app/src/config/theme/app_decorations.dart';
import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:eden_movies_app/src/config/widgets/app_badge.dart';
import 'package:eden_movies_app/src/config/widgets/app_bar.dart';
import 'package:eden_movies_app/src/core/utils/app_spacing.dart';
import 'package:eden_movies_app/src/core/utils/localization.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:eden_movies_app/src/features/movies/presentation/common_widgets/movie_title_widget.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    super.key,
    required this.movie,
    this.section,
  });

  final MovieEntity movie;
  final String? section;

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: detailsScreenAppBar(context),
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height / 2,
              child: _Cover(
                selectedFromGenre: section ?? '',
                posterUrl: movie.posterUrl,
              ),
            ),
            Positioned.fill(
              bottom: MediaQuery.of(context).size.height / 4,
              // child: _Title(title: movie.title),
              child: MovieTitleWidget(title: movie.title),
            ),
            Positioned.fill(
              top: MediaQuery.of(context).size.height / 2.3,
              child: _Info(movie: movie),
            ),
          ],
        ),
      );
}

class _Cover extends StatelessWidget {
  const _Cover({
    required this.selectedFromGenre,
    this.posterUrl,
  });

  final String selectedFromGenre;
  final String? posterUrl;

  @override
  Widget build(BuildContext context) => Hero(
        tag: '$selectedFromGenre$posterUrl',
        child: Image.network(
          posterUrl ?? '',
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          errorBuilder: (context, _, __) => const SizedBox(),
          color: AppColors.appBarBackground.withOpacity(0.3),
          colorBlendMode: BlendMode.darken,
        ),
      );
}

class _Info extends StatelessWidget {
  const _Info({required this.movie});

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(AppSpacing.spacing18),
        decoration: infoSectionDecoration,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // TODO(Diev): Add release date and rating here
              if (movie.genres != null) _Genres(genres: movie.genres!),
              const SizedBox(height: AppSpacing.spacing16),
              const Text(
                AppLocalization.overview,
                style: AppTextStyles.movieInformativeTextStyle,
              ),
              const SizedBox(height: AppSpacing.spacing16),
              Text(
                movie.storyline ?? '',
                style: AppTextStyles.introTextStyle,
              ),
            ],
          ),
        ),
      );
}

class _Genres extends StatelessWidget {
  const _Genres({required this.genres});

  final List<String> genres;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          const Text(
            AppLocalization.genres,
            style: AppTextStyles.movieInformativeTextStyle,
          ),
          const SizedBox(width: AppSpacing.spacing12),
          ...genres
              .map(
                (genre) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.spacing4,
                  ),
                  child: AppBadge(
                    label: genre,
                  ),
                ),
              )
              .toList(),
        ],
      );
}
