import 'package:eden_movies_app/src/core/resources/data_state.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:eden_movies_app/src/features/movies/domain/repository/movie_repository.dart';

class MovieRepository extends MovieRepositoryContract {
  @override
  Future<DataState<List<MovieEntity>>> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }
}
