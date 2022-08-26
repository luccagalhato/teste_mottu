import 'package:projeto_teste_mottu/main/factories/usecases/home/remote_fetch_movie_factory.dart';
import 'package:projeto_teste_mottu/presentation/home/home_presenter.dart';

HomePresenter makeHomePresenter() =>
    HomePresenter(fetchMovie: makeRemoteFetchMovie());
