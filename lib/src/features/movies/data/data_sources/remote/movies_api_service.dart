import 'package:dio/dio.dart' hide Headers;
import 'package:eden_movies_app/src/core/utils/contants.dart';
import 'package:eden_movies_app/src/features/movies/data/models/movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_api_service.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class MoviesApiService {
  factory MoviesApiService(Dio dio) = _MoviesApiService;

  @GET(getMoviesEndpoint)
  Future<HttpResponse<List<MovieModel>>> getMovies();
}
