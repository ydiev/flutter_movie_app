import 'package:eden_movies_app/src/features/movies/feature_movies.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home('/'),
  splash('/splash'),
  login('/login'),
  watchList('/watchList');

  const AppRoute(this.path);

  final String path;
}

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.home.path,
      builder: (context, state) => const MoviesListScreen(),
    ),
  ],
);
