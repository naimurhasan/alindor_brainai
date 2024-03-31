part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {
  const AuthenticationEvent(); 
}

class InitAuthentication extends AuthenticationEvent {}

class SignInWithGoogle extends AuthenticationEvent {}

class SignOut extends AuthenticationEvent {}
