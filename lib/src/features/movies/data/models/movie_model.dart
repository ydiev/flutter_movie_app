import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
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
    double? imdbRating,
    String? posterUrl,
  }) : super(
          id: id,
          title: title,
          year: year,
          genres: genres,
          ratings: ratings,
          poster: poster,
          contentRating: contentRating,
          duration: duration,
          releaseDate: releaseDate,
          averageRating: averageRating,
          originalTittle: originalTittle,
          storyline: storyline,
          actors: actors,
          imdbRating: imdbRating,
          posterUrl: posterUrl,
        );

  factory MovieModel.fromJson(Map<String, Object?> json) => MovieModel(
        id: json['id'] as String,
        title: json['title'] as String,
        year: json['year'] as String?,
        genres: (json['genres'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        ratings:
            (json['ratings'] as List<dynamic>?)?.map((e) => e as int).toList(),
        poster: json['poster'] as String?,
        contentRating: json['contentRating'] as String?,
        duration: json['duration'] as String?,
        releaseDate: json['releaseDate'] as String?,
        averageRating: json['averageRating'] as int?,
        originalTittle: json['originalTittle'] as String?,
        storyline: json['storyline'] as String?,
        actors: (json['actors'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        imdbRating: (json['imdbRating'].asDouble)?.toDouble(),
        posterUrl: json['posterurl'] as String?,
      );
}

extension _ConvertToNullIfItIsEmptyString on dynamic {
  double? get asDouble => this is String ? null : this;
}
