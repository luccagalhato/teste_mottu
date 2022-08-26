import 'package:get/get.dart';
import 'package:projeto_teste_mottu/domain/entities/movie_entity.dart';
import 'package:projeto_teste_mottu/domain/usecases/movie/fetch_movie.dart';

class HomePresenter extends GetxController {
  HomePresenter({required this.fetchMovie});

  FetchMovie fetchMovie;

  RxList<MovieEntity> popularMovies = RxList<MovieEntity>([]);
  RxList<MovieEntity> topRatedMovies = RxList<MovieEntity>([]);
  RxList<MovieEntity> upcomingMovies = RxList<MovieEntity>([]);

  @override
  void onInit() async {
    super.onInit();
    final popularMoviesList = await fetchMovie.popularExecute();
    popularMovies.value = popularMoviesList;

    final topRatedMoviesList = await fetchMovie.topRatedExecute();
    topRatedMovies.value = topRatedMoviesList;

    final upcomingMoviesList = await fetchMovie.upcomingExecute();
    upcomingMovies.value = upcomingMoviesList;
  }
}
