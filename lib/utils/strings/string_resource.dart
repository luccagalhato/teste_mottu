import 'dart:io';

import 'package:projeto_teste_mottu/utils/strings/en_us.dart';
import 'package:projeto_teste_mottu/utils/strings/pt_br.dart';

class R {
  static Translation string = EnUs();

  static void load() {
    switch (Platform.localeName) {
      case 'pt_BR':
        string = PtBr();
        break;
      default:
        string = EnUs();
        break;
    }
  }
}

abstract class Translation {
  String get loginFailTitle;
  String get loginFailDescription;
  String get loginEmail;
  String get loginEmailError;
  String get loginPassword;
  String get loginPasswordError;
  String get loginButton;
  String get loginNewUserQuestion;
  String get loginNewUserButton;
  String get loginTitle;

  String get signUpFailTitle;
  String get signUpFailDescription;
  String get signUpTitle;
  String get signUpUsername;
  String get signUpUsernameError;
  String get signUpEmail;
  String get signUpEmailError;
  String get signUpPassword;
  String get signUpPasswordError;
  String get signUpButton;

  String get homePopularMovies;
  String get homeTopRated;
  String get homeUpIncoming;
}
