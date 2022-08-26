import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String id = '/splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final presenter = Get.find<SplashPresenter>();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/logo.png', width: 300),
        ),
      ),
    );
  }
}
