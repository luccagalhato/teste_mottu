import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_teste_mottu/main/factories/pages/home/home_presenter_factory.dart';
import 'package:projeto_teste_mottu/presentation/home/home_presenter.dart';
import 'package:projeto_teste_mottu/ui/home/home_screen.dart';

Widget makeHomeScreen() {
  Get.put<HomePresenter>(makeHomePresenter());
  return const HomeScreen();
}
