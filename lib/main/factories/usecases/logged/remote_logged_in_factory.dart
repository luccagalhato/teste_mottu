import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto_teste_mottu/data/usecases/logged/remote_logged_in.dart';

RemoteLoggedIn makeRemoteLoggedIn() => RemoteLoggedIn(
      firebaseAuth: FirebaseAuth.instance,
    );
