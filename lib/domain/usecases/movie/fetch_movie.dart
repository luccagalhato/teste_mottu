import 'package:projeto_teste_mottu/domain/entities/movie_entity.dart';

abstract class FetchMovie {
  Future<List<MovieEntity>> popularExecute();
  Future<List<MovieEntity>> topRatedExecute();
  Future<List<MovieEntity>> upcomingExecute();
}
