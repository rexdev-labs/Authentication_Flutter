import 'package:firebase_auth/firebase_auth.dart';
import 'package:uiecommerce/services/collections.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future logOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Sign In";
    } on FirebaseAuthException catch (e) {
      return e.message ?? 'message error null';
    }
  }

  Future<AuthResult> signUp(String email, String password) async {
    if ((await Collection.users.where('email', isEqualTo: email).get())
        .docs
        .isEmpty)
      return (AuthResult(false, message: "User with this email exist."));
    UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    await Collection.users.doc(user.user!.uid).set(
      {'email': email, 'createAt': DateTime.now(), 'updateAt': DateTime.now()},
    );
    return (AuthResult(true));
  }
}

class AuthResult {
  final bool success;
  String? message;
  Map? data;

  AuthResult(this.success, {this.message, this.data});
}
