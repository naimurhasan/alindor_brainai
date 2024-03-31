import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository{
  Future<FirebaseAuth> signInWithGoogle();
  Future<void> signOut();
  Future<bool> isSignedIn();
  Future<User?> getUser();
}