import 'dart:io';
import 'package:dio/dio.dart';
import 'package:eden_movies_app/src/core/resources/data_state.dart';
import 'package:eden_movies_app/src/features/movies/data/data_sources/remote/movies_api_service.dart';
import 'package:eden_movies_app/src/features/movies/data/models/movie_model.dart';
import 'package:eden_movies_app/src/features/movies/domain/repository/movie_repository_contract.dart';

class MovieRepository extends MovieRepositoryContract {
  MovieRepository(this._moviesApiService);

  final MoviesApiService _moviesApiService;

  @override
  Future<DataState<List<MovieModel>>> getMovies() async {
    try {
      final httpResponse = await _moviesApiService.getMovies();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response,
            error: httpResponse.response.statusMessage,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (exception) {
      return DataFailed(exception);
    }
  }
}
