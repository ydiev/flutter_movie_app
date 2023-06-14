import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eden_movies_app/src/core/utils/contants.dart';
import 'package:eden_movies_app/src/features/movies/data/repository/movie_repository.dart';
import 'package:eden_movies_app/src/features/movies/domain/repository/movie_repository_contract.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/get_movies_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/use_cases/group_movies_by_genre_use_case.dart';
import 'package:get_it/get_it.dart';

import 'features/movies/data/data_sources/remote/movies_api_service.dart';
import 'features/movies/domain/use_cases/remove_duplicates_use_case.dart';
import 'features/movies/domain/use_cases/sort_movies_by_rating_use_case.dart';
import 'features/movies/presentation/movies_list/bloc/movies_list_cubit.dart';

final getIt = GetIt.instance;

void registerDependencies() {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        if (response.requestOptions.path == getMoviesEndpoint) {
          response.data = jsonDecode(response.data);
          handler.next(response);
        }
      },
    ),
  );
  getIt.registerSingleton<Dio>(dio);

  getIt.registerLazySingleton<MoviesApiService>(
    () => MoviesApiService(getIt()),
  );
  getIt.registerLazySingleton<MovieRepositoryContract>(
    () => MovieRepository(getIt()),
  );
  getIt.registerLazySingleton<GetMoviesUseCase>(
    () => GetMoviesUseCase(getIt()),
  );
  getIt.registerLazySingleton<RemoveDuplicatesUseCase>(
    () => RemoveDuplicatesUseCase(),
  );
  getIt.registerLazySingleton<SortMoviesByRatingUseCase>(
    () => SortMoviesByRatingUseCase(),
  );
  getIt.registerLazySingleton<GroupMoviesByGenreUseCase>(
    () => GroupMoviesByGenreUseCase(),
  );
  getIt.registerFactory<MoviesListCubit>(
    () => MoviesListCubit(getIt(), getIt(), getIt(), getIt()),
  );
}
