import 'package:projeto_teste_mottu/main/factories/usecases/login/remote_register_with_email_factory.dart';
import 'package:projeto_teste_mottu/presentation/signup/signup_presenter.dart';

SignUpPresenter makeSignUpPresenter() => SignUpPresenter(
      registerWithEmail: makeRemoteRegisterWithEmail(),
    );
