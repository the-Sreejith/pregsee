part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent([List props = const []]);
}

class AppStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';

  @override
  List<Object> get props => [];
}

class LoggedIn extends AuthenticationEvent {
  // final String token;

  // LoggedIn({@required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn';

  @override
  List<Object> get props => [];
}

class LogOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';

  @override
  List<Object> get props => [];
}
