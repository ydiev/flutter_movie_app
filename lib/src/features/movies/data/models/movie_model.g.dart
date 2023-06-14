// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      id: json['id'] as String,
      title: json['title'] as String,
      year: json['year'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ratings:
          (json['ratings'] as List<dynamic>?)?.map((e) => e as int).toList(),
      poster: json['poster'] as String?,
      contentRating: json['contentRating'] as String?,
      duration: json['duration'] as String?,
      releaseDate: json['releaseDate'] as String?,
      averageRating: json['averageRating'] as int?,
      originalTittle: json['originalTittle'] as String?,
      storyline: json['storyline'] as String?,
      actors:
          (json['actors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imdbRating: _imdbRatingFromJsonConverter(json['imdbRating']),
      posterUrl: json['posterurl'] as String?,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'genres': instance.genres,
      'ratings': instance.ratings,
      'poster': instance.poster,
      'contentRating': instance.contentRating,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate,
      'averageRating': instance.averageRating,
      'originalTittle': instance.originalTittle,
      'storyline': instance.storyline,
      'actors': instance.actors,
      'imdbRating': instance.imdbRating,
      'posterurl': instance.posterUrl,
    };
