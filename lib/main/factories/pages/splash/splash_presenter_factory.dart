import 'package:projeto_teste_mottu/main/factories/usecases/logged/remote_logged_in_factory.dart';
import 'package:projeto_teste_mottu/presentation/splash/splash_presenter.dart';

SplashPresenter makeSplashPresenter() => SplashPresenter(
      loggedIn: makeRemoteLoggedIn(),
    );
