import 'package:get/get.dart';

import 'package:projeto_teste_mottu/domain/usecases/logged/logged_in.dart';
import 'package:projeto_teste_mottu/ui/home/home_screen.dart';
import 'package:projeto_teste_mottu/ui/login/login_screen.dart';

class SplashPresenter extends GetxController {
  SplashPresenter({required this.loggedIn});

  LoggedIn loggedIn;

  @override
  void onReady() async {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      var user = loggedIn.execute();
      if (user != null) {
        Get.offAndToNamed(HomeScreen.id);
      } else {
        Get.offAndToNamed(LoginScreen.id);
      }
    });
  }
}
