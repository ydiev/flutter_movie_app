import 'package:eden_movies_app/src/core/resources/data_state.dart';
import 'package:eden_movies_app/src/core/use_cases/base_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:eden_movies_app/src/features/movies/domain/repository/movie_repository_contract.dart';

class GetMoviesUseCase
    implements BaseUseCase<Future<DataState<List<MovieEntity>>>, void> {
  GetMoviesUseCase(this._movieRepository);

  final MovieRepositoryContract _movieRepository;

  @override
  Future<DataState<List<MovieEntity>>> execute({void param}) =>
      _movieRepository.getMovies();
}
