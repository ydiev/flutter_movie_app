import 'package:eden_movies_app/src/core/resources/data_state.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/'
    'movie_entity.dart';

abstract class MovieRepositoryContract {
  Future<DataState<List<MovieEntity>>> getMovies();
}
