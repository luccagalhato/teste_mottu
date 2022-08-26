import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto_teste_mottu/domain/usecases/signup/register_with_email.dart';

class RemoteRegisterWithEmail extends RegisterWithEmail {
  RemoteRegisterWithEmail({
    required this.firebaseAuth,
  });

  FirebaseAuth firebaseAuth;

  @override
  Future<User?> execute(
      {required String email, required String password}) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (error) {
      rethrow;
    }
  }
}
