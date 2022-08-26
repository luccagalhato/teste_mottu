import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto_teste_mottu/domain/usecases/logged/logged_in.dart';

class RemoteLoggedIn extends LoggedIn {
  RemoteLoggedIn({
    required this.firebaseAuth,
  });

  FirebaseAuth firebaseAuth;

  @override
  User? execute() {
    try {
      return firebaseAuth.currentUser;
    } catch (error) {
      return null;
    }
  }
}
