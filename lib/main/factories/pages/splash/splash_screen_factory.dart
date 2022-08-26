import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_teste_mottu/main/factories/pages/splash/splash_presenter_factory.dart';
import 'package:projeto_teste_mottu/presentation/splash/splash_presenter.dart';
import 'package:projeto_teste_mottu/ui/splash/splash_screen.dart';

Widget makeSplashScreen() {
  Get.put<SplashPresenter>(makeSplashPresenter());
  return const SplashScreen();
}
