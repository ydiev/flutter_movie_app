// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  List<int>? get ratings => throw _privateConstructorUsedError;
  String? get poster => throw _privateConstructorUsedError;
  String? get contentRating => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  int? get averageRating => throw _privateConstructorUsedError;
  String? get originalTittle => throw _privateConstructorUsedError;
  String? get storyline => throw _privateConstructorUsedError;
  List<String>? get actors => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _imdbRatingFromJsonConverter)
  double? get imdbRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'posterurl')
  String? get posterUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {String id,
      String? title,
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
      @JsonKey(name: 'posterurl') String? posterUrl});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? year = freezed,
    Object? genres = freezed,
    Object? ratings = freezed,
    Object? poster = freezed,
    Object? contentRating = freezed,
    Object? duration = freezed,
    Object? releaseDate = freezed,
    Object? averageRating = freezed,
    Object? originalTittle = freezed,
    Object? storyline = freezed,
    Object? actors = freezed,
    Object? imdbRating = freezed,
    Object? posterUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTittle: freezed == originalTittle
          ? _value.originalTittle
          : originalTittle // ignore: cast_nullable_to_non_nullable
              as String?,
      storyline: freezed == storyline
          ? _value.storyline
          : storyline // ignore: cast_nullable_to_non_nullable
              as String?,
      actors: freezed == actors
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imdbRating: freezed == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as double?,
      posterUrl: freezed == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? title,
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
      @JsonKey(name: 'posterurl') String? posterUrl});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$_MovieModel>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? year = freezed,
    Object? genres = freezed,
    Object? ratings = freezed,
    Object? poster = freezed,
    Object? contentRating = freezed,
    Object? duration = freezed,
    Object? releaseDate = freezed,
    Object? averageRating = freezed,
    Object? originalTittle = freezed,
    Object? storyline = freezed,
    Object? actors = freezed,
    Object? imdbRating = freezed,
    Object? posterUrl = freezed,
  }) {
    return _then(_$_MovieModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratings: freezed == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      contentRating: freezed == contentRating
          ? _value.contentRating
          : contentRating // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTittle: freezed == originalTittle
          ? _value.originalTittle
          : originalTittle // ignore: cast_nullable_to_non_nullable
              as String?,
      storyline: freezed == storyline
          ? _value.storyline
          : storyline // ignore: cast_nullable_to_non_nullable
              as String?,
      actors: freezed == actors
          ? _value._actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imdbRating: freezed == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as double?,
      posterUrl: freezed == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {required this.id,
      this.title,
      this.year,
      final List<String>? genres,
      final List<int>? ratings,
      this.poster,
      this.contentRating,
      this.duration,
      this.releaseDate,
      this.averageRating,
      this.originalTittle,
      this.storyline,
      final List<String>? actors,
      @JsonKey(fromJson: _imdbRatingFromJsonConverter) this.imdbRating,
      @JsonKey(name: 'posterurl') this.posterUrl})
      : _genres = genres,
        _ratings = ratings,
        _actors = actors;

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? year;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _ratings;
  @override
  List<int>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? poster;
  @override
  final String? contentRating;
  @override
  final String? duration;
  @override
  final String? releaseDate;
  @override
  final int? averageRating;
  @override
  final String? originalTittle;
  @override
  final String? storyline;
  final List<String>? _actors;
  @override
  List<String>? get actors {
    final value = _actors;
    if (value == null) return null;
    if (_actors is EqualUnmodifiableListView) return _actors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: _imdbRatingFromJsonConverter)
  final double? imdbRating;
  @override
  @JsonKey(name: 'posterurl')
  final String? posterUrl;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, year: $year, genres: $genres, ratings: $ratings, poster: $poster, contentRating: $contentRating, duration: $duration, releaseDate: $releaseDate, averageRating: $averageRating, originalTittle: $originalTittle, storyline: $storyline, actors: $actors, imdbRating: $imdbRating, posterUrl: $posterUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.contentRating, contentRating) ||
                other.contentRating == contentRating) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.originalTittle, originalTittle) ||
                other.originalTittle == originalTittle) &&
            (identical(other.storyline, storyline) ||
                other.storyline == storyline) &&
            const DeepCollectionEquality().equals(other._actors, _actors) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      year,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_ratings),
      poster,
      contentRating,
      duration,
      releaseDate,
      averageRating,
      originalTittle,
      storyline,
      const DeepCollectionEquality().hash(_actors),
      imdbRating,
      posterUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required final String id,
      final String? title,
      final String? year,
      final List<String>? genres,
      final List<int>? ratings,
      final String? poster,
      final String? contentRating,
      final String? duration,
      final String? releaseDate,
      final int? averageRating,
      final String? originalTittle,
      final String? storyline,
      final List<String>? actors,
      @JsonKey(fromJson: _imdbRatingFromJsonConverter) final double? imdbRating,
      @JsonKey(name: 'posterurl') final String? posterUrl}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  String? get year;
  @override
  List<String>? get genres;
  @override
  List<int>? get ratings;
  @override
  String? get poster;
  @override
  String? get contentRating;
  @override
  String? get duration;
  @override
  String? get releaseDate;
  @override
  int? get averageRating;
  @override
  String? get originalTittle;
  @override
  String? get storyline;
  @override
  List<String>? get actors;
  @override
  @JsonKey(fromJson: _imdbRatingFromJsonConverter)
  double? get imdbRating;
  @override
  @JsonKey(name: 'posterurl')
  String? get posterUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
