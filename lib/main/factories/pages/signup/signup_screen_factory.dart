import 'package:flutter/cupertino.dart';
import 'package:projeto_teste_mottu/main/factories/pages/signup/signup_presenter_factory.dart';
import 'package:projeto_teste_mottu/ui/signup/signup_screen.dart';
import 'package:flutter/material.dart';

Widget makeSignUpScreen() => SignUpScreen(
      presenter: makeSignUpPresenter(),
    );
