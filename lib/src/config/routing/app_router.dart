import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movie_details/screens/movie_details_screen.dart';
import 'package:eden_movies_app/src/features/movies/presentation/movies_list/screens/movies_list_screen.dart';
import 'package:eden_movies_app/src/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home('/home'),
  movie('movie'),
  splash('/'),
  login('/login'),
  watchList('/watchList');

  const AppRoute(this.path);

  final String path;
}

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      name: AppRoute.splash.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.name,
      builder: (context, state) => const MoviesListScreen(),
      routes: [
        GoRoute(
          path: AppRoute.movie.path,
          name: AppRoute.movie.name,
          pageBuilder: (context, state) {
            final params = state.extra as MovieDetailsScreenParams;
            return CustomTransitionPage(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
              child: MovieDetailsScreen(
                movie: params.movie,
                section: params.section,
              ),
            );
          },
        ),
      ],
    ),
  ],
);

class MovieDetailsScreenParams {
  const MovieDetailsScreenParams({
    required this.movie,
    this.section,
  });

  final MovieEntity movie;
  final String? section;
}
