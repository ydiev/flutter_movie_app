import 'package:eden_movies_app/src/core/use_cases/base_use_case.dart';
import 'package:eden_movies_app/src/features/movies/domain/entities/movie_entity.dart';

class RemoveDuplicatesUseCase
    implements BaseUseCase<List<MovieEntity>, List<MovieEntity>> {
  RemoveDuplicatesUseCase();

  @override
  List<MovieEntity> execute({List<MovieEntity>? param}) {
    if (param == null) return [];
    return param.toSet().toList();
  }
}
