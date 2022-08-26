import 'package:projeto_teste_mottu/data/usecases/home/remote_fetch_movie.dart';
import 'package:projeto_teste_mottu/main/factories/infra/http_client_factory.dart';

RemoteFetchMovie makeRemoteFetchMovie() =>
    RemoteFetchMovie(httpClient: makeHttpClient());
