import 'package:projeto_teste_mottu/main/factories/usecases/signup/remote_login_with_password_factory.dart';
import 'package:projeto_teste_mottu/presentation/login/login_presenter.dart';

LoginPresenter makeLoginPresenter() => LoginPresenter(
      loginWithEmail: makeRemoteLoginWithEmail(),
    );
