import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRemoteDatastore{
  Future<FirebaseAuth> signInWithGoogle();
  Future<void> signOut();
  Future<bool> isSignedIn();
  Future<User?> getUser();
}