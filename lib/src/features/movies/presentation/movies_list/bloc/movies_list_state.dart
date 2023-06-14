part of 'movies_list_cubit.dart';

@freezed
class MoviesListState with _$MoviesListState {
  const factory MoviesListState.initial() = _Initial;

  const factory MoviesListState.loading() = _Loading;

  const factory MoviesListState.loaded(
    List<MovieEntity> allMovies,
    Map<String, List<MovieEntity>> byGenres,
  ) = _Loaded;

  const factory MoviesListState.error(DioException exception) = _Exception;
}
