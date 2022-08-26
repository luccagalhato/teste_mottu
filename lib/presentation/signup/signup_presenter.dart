import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:projeto_teste_mottu/domain/usecases/signup/register_with_email.dart';
import 'package:projeto_teste_mottu/ui/home/home_screen.dart';
import 'package:projeto_teste_mottu/utils/strings/string_resource.dart';

class SignUpPresenter extends GetxController {
  SignUpPresenter({
    required this.registerWithEmail,
  });

  RegisterWithEmail registerWithEmail;

  RxBool showUsernameInvalid = false.obs;
  RxBool showEmailInvalid = false.obs;
  RxBool showPasswordInvalid = false.obs;
  RxBool signUpButtonIsEnabled = false.obs;
  RxBool showSignUpFailed = false.obs;
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;

  String _username = '';
  String _email = '';
  String _password = '';

  void onUsernameChanged(String username) {
    _username = username;
    _checkForm();
  }

  void onEmailChanged(String email) {
    _email = email;
    _checkForm();
  }

  void onPasswordChanged(String password) {
    _password = password;
    _checkForm();
  }

  void _checkForm() {
    final isUsernameValid = GetUtils.isUsername(_username);
    final isEmailValid = GetUtils.isEmail(_email);
    final isPasswordValid = _password.length > 5;

    showUsernameInvalid.value = !isUsernameValid;
    showEmailInvalid.value = !isEmailValid;
    showPasswordInvalid.value = !isPasswordValid;

    signUpButtonIsEnabled.value =
        isUsernameValid && isEmailValid && isPasswordValid;
  }

  void onSignUp() async {
    try {
      isLoading.value = true;
      var user =
          await registerWithEmail.execute(email: _email, password: _password);

      if (user != null) {
        isLoading.value = false;
        Get.offAndToNamed(HomeScreen.id);
      } else {
        isLoading.value = false;
        showSignUpFailed.value = true;
      }
    } on FirebaseAuthException catch (error) {
      isLoading.value = false;
      showSignUpFailed.value = true;
      if (error.message != null) {
        errorMessage.value = error.message.toString();
      } else {
        errorMessage.value = R.string.signUpFailDescription;
      }
    }
  }
}
