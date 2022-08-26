import 'package:get/get.dart';
import 'package:projeto_teste_mottu/domain/usecases/login/login_with_email.dart';
import 'package:projeto_teste_mottu/ui/home/home_screen.dart';
import 'package:projeto_teste_mottu/ui/signup/signup_screen.dart';

class LoginPresenter extends GetxController {
  LoginPresenter({
    required this.loginWithEmail,
  });

  LoginWithEmail loginWithEmail;

  RxBool showEmailInvalid = false.obs;
  RxBool showPasswordInvalid = false.obs;
  RxBool loginButtonIsEnabled = false.obs;
  RxBool showLoginFailed = false.obs;
  RxBool isLoading = false.obs;

  String _email = '';
  String _password = '';

  void onEmailChanged(String email) {
    _email = email;
    _checkForm();
  }

  void onPasswordChanged(String password) {
    _password = password;
    _checkForm();
  }

  void onLoginWithEmail() async {
    isLoading.value = true;
    var user = await loginWithEmail.execute(email: _email, password: _password);
    if (user != null) {
      isLoading.value = false;
      Get.offAndToNamed(HomeScreen.id);
    } else {
      isLoading.value = false;
      showLoginFailed.value = true;
    }
  }

  void _checkForm() {
    final isEmailValid = GetUtils.isEmail(_email);
    final isPasswordValid = _password.isNotEmpty;

    showEmailInvalid.value = !isEmailValid;
    showPasswordInvalid.value = !isPasswordValid;

    loginButtonIsEnabled.value = isEmailValid && isPasswordValid;
  }

  void onSignUpButtonClick() {
    Get.toNamed(SignUpScreen.id);
  }
}
