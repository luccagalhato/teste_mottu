import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto_teste_mottu/data/usecases/signup/remote_register_with_email.dart';

RemoteRegisterWithEmail makeRemoteRegisterWithEmail() =>
    RemoteRegisterWithEmail(
      firebaseAuth: FirebaseAuth.instance,
    );
