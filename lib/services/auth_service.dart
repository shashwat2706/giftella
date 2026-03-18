import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  AuthService(this._auth);

  final FirebaseAuth _auth;

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  Future<UserCredential> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AuthFailure.fromFirebaseAuth(e);
    }
  }

  Future<UserCredential> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AuthFailure.fromFirebaseAuth(e);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final googleSignIn = GoogleSignIn.instance;
      // In newer versions of google_sign_in, initialize and authenticate are used.
      // However, it seems the plugin in your environment uses a singleton pattern.
      // Let's try the singleton 'instance' with 'authenticate' or 'signIn'.
      
      // Based on the source code found in your environment:
      await googleSignIn.initialize();
      final account = await googleSignIn.authenticate();

      final googleAuth = account.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw AuthFailure.fromFirebaseAuth(e);
    } catch (e) {
      throw AuthFailure(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await GoogleSignIn.instance.signOut();
    } catch (_) {
      // ignore: Google sign out may fail on some platforms
    }
    await _auth.signOut();
  }
}

class AuthFailure implements Exception {
  const AuthFailure(this.message);

  final String message;

  @override
  String toString() => message;

  factory AuthFailure.fromFirebaseAuth(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return const AuthFailure('Please enter a valid email address.');
      case 'user-disabled':
        return const AuthFailure('This account has been disabled.');
      case 'user-not-found':
      case 'wrong-password':
      case 'invalid-credential':
        return const AuthFailure('Incorrect email or password.');
      case 'email-already-in-use':
        return const AuthFailure('An account already exists for that email.');
      case 'weak-password':
        return const AuthFailure('Password is too weak (min 6 characters).');
      case 'network-request-failed':
        return const AuthFailure('Network error. Please try again.');
      default:
        return AuthFailure(e.message ?? 'Authentication failed. Please try again.');
    }
  }
}
