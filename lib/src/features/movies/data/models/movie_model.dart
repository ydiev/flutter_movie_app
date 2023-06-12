import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.freezed.dart';

part 'movie_model.g.dart';

@freezed
class MovieModel extends MovieEntity with _$MovieModel {
  const factory MovieModel({
    required String id,
    required String title,
    required String year,
    required List<String> genres,
    required List<int> ratings,
    required String poster,
    required String contentRating,
    required String duration,
    required String releaseDate,
    required int averageRating,
    required String originalTittle,
    required String storyline,
    required List<String> actors,
    required String imdbRating,
    @JsonKey(name: 'posterurl') required String posterUrl,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);
}
