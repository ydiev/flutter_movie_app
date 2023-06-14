import 'package:eden_movies_app/src/core/use_cases/base_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';

class SortMoviesByRatingUseCase
    implements BaseUseCase<List<MovieEntity>, List<MovieEntity>> {
  SortMoviesByRatingUseCase();

  @override
  List<MovieEntity> execute({List<MovieEntity>? param}) {
    if (param == null) return [];
    return param
      ..sort((a, b) {
        final aRatings = a.ratings;
        final bRatings = b.ratings;
        if (aRatings == null || bRatings == null) 1;
        return aRatings!.avgRating.compareTo(bRatings!.avgRating);
      });
  }
}

extension _GetAverageRating on List<int> {
  double get avgRating => reduce((value, element) => value + element) / length;
}
