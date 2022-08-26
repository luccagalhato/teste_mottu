import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_teste_mottu/presentation/login/login_presenter.dart';
import 'package:projeto_teste_mottu/utils/strings/string_resource.dart';

class LoginScreen extends StatelessWidget {
  static const String id = '/login_screen';

  const LoginScreen({Key? key, required this.presenter}) : super(key: key);

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    presenter.showLoginFailed.listen((show) {
      if (show) {
        Get.snackbar(
          R.string.loginFailTitle,
          R.string.loginFailDescription,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
        );
        presenter.showLoginFailed.value = false;
      }
    });

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/logo.png', width: 120),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                child: Text(
                                  R.string.loginTitle,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                )),
                          ]),
                      Form(
                          child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: Obx(
                            () => TextFormField(
                              autofillHints: const [AutofillHints.email],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(32, 4, 32, 4),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xffced0d4)),
                                ),
                                errorStyle:
                                    const TextStyle(color: Color(0xffCF6679)),
                                errorText: presenter.showEmailInvalid.value
                                    ? R.string.loginEmailError
                                    : null,
                                fillColor: const Color(0xff262626),
                                filled: true,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff65676B), width: 1.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffCF6679)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: R.string.loginEmail,
                                hintStyle:
                                    const TextStyle(color: Color(0xff65676B)),
                              ),
                              enableSuggestions: true,
                              keyboardType: TextInputType.emailAddress,
                              onChanged: presenter.onEmailChanged,
                              style: const TextStyle(color: Colors.white),
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: Obx(
                            () => TextFormField(
                              autocorrect: false,
                              autofillHints: const [AutofillHints.password],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(32, 4, 32, 4),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xffced0d4)),
                                ),
                                errorStyle:
                                    const TextStyle(color: Color(0xffCF6679)),
                                errorText: presenter.showPasswordInvalid.value
                                    ? R.string.loginPasswordError
                                    : null,
                                fillColor: const Color(0xff262626),
                                filled: true,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff65676B), width: 1.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffCF6679)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: R.string.loginPassword,
                                hintStyle:
                                    const TextStyle(color: Color(0xff65676B)),
                              ),
                              enableSuggestions: false,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              onChanged: presenter.onPasswordChanged,
                              style: const TextStyle(color: Colors.white),
                              textInputAction: TextInputAction.go,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 5),
                          child: Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: Obx(
                                () => ElevatedButton(
                                  onPressed:
                                      presenter.loginButtonIsEnabled.value
                                          ? presenter.onLoginWithEmail
                                          : null,
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        return const Color(0xffe50914);
                                      },
                                    ),
                                    elevation: MaterialStateProperty
                                        .resolveWith<double>(
                                      (Set<MaterialState> states) {
                                        return 3;
                                      },
                                    ),
                                    shape: MaterialStateProperty.resolveWith<
                                        RoundedRectangleBorder>(
                                      (Set<MaterialState> states) {
                                        return RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5));
                                      },
                                    ),
                                  ),
                                  child: presenter.isLoading.value
                                      ? const SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 3,
                                          ),
                                        )
                                      : Text(
                                          R.string.loginButton,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                      Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                R.string.loginNewUserQuestion,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: GestureDetector(
                                  onTap: presenter.onSignUpButtonClick,
                                  child: Text(
                                    R.string.loginNewUserButton,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ])))));
  }
}
