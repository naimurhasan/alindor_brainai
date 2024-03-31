import 'dart:async';

import 'package:alindor_brainai/src/core/utils/logger.dart';
import 'package:alindor_brainai/src/features/auth/data/model/auth_user.dart';
import 'package:alindor_brainai/src/features/auth/domain/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({required this.userRepository})
      : super(AuthenticationInitialState()) {
    on<SignInWithGoogle>(_signInWithGoogle);
    on<SignOut>(_signOut);
    on<InitAuthentication>(_initAuthentication);
  }

  FutureOr<void> _initAuthentication(
      InitAuthentication event, Emitter<AuthenticationState> emit) async {
    final user = await userRepository.getUser();
    if (user != null) {
      emit(AuthenticationSuccessState(AuthUser(
        uid: user.uid,
        email: user.email,
        displayName: user.displayName,
        photoURL: user.photoURL,
      )));
    }
  }

  FutureOr<void> _signInWithGoogle(
      SignInWithGoogle event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoadingState());
    try {
      final firebaseAuth = await userRepository.signInWithGoogle();

      if (firebaseAuth.currentUser != null) {
        final user = AuthUser(
          uid: firebaseAuth.currentUser!.uid,
          email: firebaseAuth.currentUser!.email,
          displayName: firebaseAuth.currentUser!.displayName,
          photoURL: firebaseAuth.currentUser!.photoURL,
        );
        emit(AuthenticationSuccessState(user));
      } else {
        emit(const AuthenticationFailureState('Sign in failed'));
      }
    } catch (e, trace) {
      emit(AuthenticationFailureState(e.toString()));
      Logger.log(message: e.toString(), stackTrace: trace);
    }
  }

  FutureOr<void> _signOut(SignOut event, Emitter<AuthenticationState> emit) {
    userRepository.signOut();
  }
}
