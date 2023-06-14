import 'package:dio/dio.dart';
import 'package:eden_movies_app/src/core/resources/data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/get_movies_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_list_state.dart';

part 'movies_list_cubit.freezed.dart';

class MoviesListCubit extends Cubit<MoviesListState> {
  MoviesListCubit(this._getMoviesUseCase)
      : super(const MoviesListState.initial());
  final GetMoviesUseCase _getMoviesUseCase;

  // TODO(Diev): Add an use case that will precache the images

  void fetchMovies() async {
    final dataState = await _getMoviesUseCase.execute();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(MoviesListState.loaded(dataState.data!));
    }
    if (dataState is DataFailed && dataState.exception != null) {
      emit(MoviesListState.error(dataState.exception!));
    }
  }
}
