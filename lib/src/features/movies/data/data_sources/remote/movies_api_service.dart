import 'package:dio/dio.dart';
import 'package:eden_movies_app/src/features/movies/data/models/movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_api_service.g.dart';

@RestApi(baseUrl: 'https://google.com')
abstract class MoviesApiService {
  factory MoviesApiService(Dio dio) = _MoviesApiService;

  @GET('FEND16/movie-json-data/master/json/movies-coming-soon.json')
  Future<HttpResponse<List<MovieModel>>> getMovies();
}
