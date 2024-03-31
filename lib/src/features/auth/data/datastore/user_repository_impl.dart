import 'package:alindor_brainai/src/features/auth/domain/user_remote_datastore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepositoryImpl implements UserRemoteDatastore{
  
  final UserRemoteDatastore userRemoteDatastore;

  UserRepositoryImpl({required this.userRemoteDatastore});

  @override
  Future<User?> getUser() {
    return userRemoteDatastore.getUser();
  }

  @override
  Future<bool> isSignedIn() {
    return userRemoteDatastore.isSignedIn();
  }

  @override
  Future<FirebaseAuth> signInWithGoogle() {
    return userRemoteDatastore.signInWithGoogle();
  }

  @override
  Future<void> signOut() {
    return userRemoteDatastore.signOut();
  }
  
}