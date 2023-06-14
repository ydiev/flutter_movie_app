import 'package:dio/dio.dart';
import 'package:eden_movies_app/src/core/resources/data_state.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/group_movies_by_genre_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/remove_duplicates_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/sort_movies_by_rating_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/get_movies_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_list_state.dart';

part 'movies_list_cubit.freezed.dart';

class MoviesListCubit extends Cubit<MoviesListState> {
  MoviesListCubit(
    this._getMoviesUseCase,
    this._removeDuplicatesUseCase,
    this._sortMoviesByRating,
    this._groupMoviesByGenreUseCase,
  ) : super(const MoviesListState.initial());
  final GetMoviesUseCase _getMoviesUseCase;
  final RemoveDuplicatesUseCase _removeDuplicatesUseCase;
  final SortMoviesByRatingUseCase _sortMoviesByRating;
  final GroupMoviesByGenreUseCase _groupMoviesByGenreUseCase;

  // TODO(Diev): Add an use case that will precache the images

  void fetchMovies() async {
    final dataState = await _getMoviesUseCase.execute();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      final data = dataState.data!;
      emit(
        MoviesListState.loaded(
          data,
          _groupMoviesByGenreUseCase.execute(
            param: _sortMoviesByRating.execute(
              param: _removeDuplicatesUseCase.execute(
                param: data,
              ),
            ),
          ),
        ),
      );
    }
    if (dataState is DataFailed && dataState.exception != null) {
      emit(MoviesListState.error(dataState.exception!));
    }
  }
}
