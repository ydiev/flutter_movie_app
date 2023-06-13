import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';

enum CarouselSize {
  small(200),
  big(300);

  const CarouselSize(this.height);

  final double height;
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    required this.movies,
    this.title,
    this.size = CarouselSize.big,
  });

  final List<MovieEntity> movies;
  final String? title;
  final CarouselSize size;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.red,
                  ),
                ),
              ),
            SizedBox(
              height: size.height,
              child: ListView.separated(
                separatorBuilder: (context, _) => const SizedBox(width: 6),
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) => Container(
                  margin: _getMargin(index, movies.length),
                  child: const _CarouselItem(),
                ),
              ),
            ),
          ],
        ),
      );

  EdgeInsets _getMargin(int index, int lastIndex) {
    if (index == 0) {
      return const EdgeInsets.only(left: 6);
    } else if (index == lastIndex - 1) {
      return const EdgeInsets.only(right: 6);
    } else {
      return EdgeInsets.zero;
    }
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem();

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        // TODO(Diev): Change it when the image width is detected
        width: 160.0,
        child: const Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              // TODO(Diev): Replace with dynamic data
              'Movie title',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
}
