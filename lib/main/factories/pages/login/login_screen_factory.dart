import 'package:flutter/material.dart';
import 'package:projeto_teste_mottu/main/factories/pages/login/login_presenter_factory.dart';
import 'package:projeto_teste_mottu/ui/login/login_screen.dart';

Widget makeLoginScreen() => LoginScreen(
      presenter: makeLoginPresenter(),
    );
