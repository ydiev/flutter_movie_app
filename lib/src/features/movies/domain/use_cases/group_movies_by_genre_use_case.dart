import 'package:eden_movies_app/src/core/use_cases/base_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';

class GroupMoviesByGenreUseCase
    implements BaseUseCase<Map<String, List<MovieEntity>>, List<MovieEntity>> {
  GroupMoviesByGenreUseCase();

  @override
  Map<String, List<MovieEntity>> execute({List<MovieEntity>? param}) {
    Map<String, List<MovieEntity>> movieMap = {};

    if (param == null) return movieMap;

    for (var movie in param) {
      if (movie.genres == null) continue;
      for (var genre in movie.genres!) {
        if (movieMap.containsKey(genre)) {
          movieMap[genre]!.add(movie);
        } else {
          movieMap[genre] = [movie];
        }
      }
    }

    return movieMap;
  }
}
