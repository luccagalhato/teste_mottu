import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_teste_mottu/presentation/home/home_presenter.dart';
import 'package:projeto_teste_mottu/ui/home/components/movie_card.dart';
import 'package:projeto_teste_mottu/utils/strings/string_resource.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<HomePresenter>();

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 40, bottom: 20),
                    child: Text(
                      R.string.homePopularMovies,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ]),
              Obx(
                () {
                  final popularMovieList = presenter.popularMovies.value;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicHeight(
                      child: Row(
                        children: popularMovieList
                            .map<MovieCard>((e) => MovieCard(movie: e))
                            .toList(),
                      ),
                    ),
                  );
                },
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 40, bottom: 20),
                    child: Text(
                      R.string.homeTopRated,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ]),
              Obx(
                () {
                  final topRatedMovieList = presenter.topRatedMovies.value;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicHeight(
                      child: Row(
                        children: topRatedMovieList
                            .map<MovieCard>((e) => MovieCard(movie: e))
                            .toList(),
                      ),
                    ),
                  );
                },
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 40, bottom: 20),
                    child: Text(
                      R.string.homeUpIncoming,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ]),
              Obx(
                () {
                  final upComingMovieList = presenter.upcomingMovies.value;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicHeight(
                      child: Row(
                        children: upComingMovieList
                            .map<MovieCard>((e) => MovieCard(movie: e))
                            .toList(),
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
        ));
  }
}
