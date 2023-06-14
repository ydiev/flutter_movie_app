import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';

part 'movie_model.g.dart';

@freezed
class MovieModel extends MovieEntity with _$MovieModel {
  const factory MovieModel({
    required String id,
    required String title,
    String? year,
    List<String>? genres,
    List<int>? ratings,
    String? poster,
    String? contentRating,
    String? duration,
    String? releaseDate,
    int? averageRating,
    String? originalTittle,
    String? storyline,
    List<String>? actors,
    @JsonKey(fromJson: _imdbRatingFromJsonConverter) double? imdbRating,
    @JsonKey(name: 'posterurl') String? posterUrl,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);
}

_imdbRatingFromJsonConverter(value) => value is String ? null : value;
