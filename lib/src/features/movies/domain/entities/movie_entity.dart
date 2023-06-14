abstract class MovieEntity {
  const MovieEntity({
    required this.id,
    required this.title,
    this.year,
    this.genres,
    this.ratings,
    this.poster,
    this.contentRating,
    this.duration,
    this.releaseDate,
    this.averageRating,
    this.originalTittle,
    this.storyline,
    this.actors,
    this.imdbRating,
    this.posterUrl,
  });

  final String id;
  final String title;
  final String? year;
  final List<String>? genres;
  final List<int>? ratings;
  final String? poster;
  final String? contentRating;
  final String? duration;
  final String? releaseDate;
  final int? averageRating;
  final String? originalTittle;
  final String? storyline;
  final List<String>? actors;
  final double? imdbRating;
  final String? posterUrl;
}
