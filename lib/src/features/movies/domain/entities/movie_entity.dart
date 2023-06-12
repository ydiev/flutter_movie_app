import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';

@freezed
class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
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
  }) = _MovieEntity;
}
