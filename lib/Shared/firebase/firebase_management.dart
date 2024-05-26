import 'package:firebase_auth/firebase_auth.dart';

class FirebaseManagement {
  createUser(String email, String password) {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
