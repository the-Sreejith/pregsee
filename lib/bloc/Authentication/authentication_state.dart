part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

// class AuthenticationInitial extends AuthenticationState {}

class InitialAuthenticationState extends AuthenticationState {}

class Uninitialized extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final UserModel user;

  Authenticated(this.user);
}

class Unauthenticated extends AuthenticationState {}

class Loading extends AuthenticationState {}
