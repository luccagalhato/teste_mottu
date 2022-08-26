import 'package:projeto_teste_mottu/utils/strings/string_resource.dart';

class EnUs implements Translation {
  @override
  String get loginFailTitle => 'Ops';
  @override
  String get loginFailDescription => 'Invalid email or password';
  @override
  String get loginEmail => 'Email';
  @override
  String get loginEmailError => 'Invalid email';
  @override
  String get loginPassword => 'Password';
  @override
  String get loginPasswordError => 'Invalid password';
  @override
  String get loginButton => 'Sign in';
  @override
  String get loginNewUserQuestion => 'New to Netflix?';
  @override
  String get loginNewUserButton => 'Sign up now';
  @override
  String get loginTitle => 'Sign in';

  @override
  String get signUpFailTitle => 'Ops';
  @override
  String get signUpFailDescription => 'Sign up Error';
  @override
  String get signUpTitle => 'Create account';
  @override
  String get signUpUsername => 'Username';
  @override
  String get signUpUsernameError => 'Invalid username';
  @override
  String get signUpEmail => 'Email';
  @override
  String get signUpEmailError => 'Invalid email';
  @override
  String get signUpPassword => 'Password';
  @override
  String get signUpPasswordError => 'Invalid password';
  @override
  String get signUpButton => 'Sign up';

  @override
  String get homePopularMovies => 'Popular';
  @override
  String get homeTopRated => 'Top Rated';
  @override
  String get homeUpIncoming => 'Upcoming';
}
