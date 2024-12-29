part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  // const LoginState();

//   @override
//   List<Object> get props => [];
}

// class LoginInitial extends LoginState {}

class InitialLoginState extends LoginState {
  @override
  List<Object> get props => [];
}

class NameInputState extends LoginState {
  final String userName;
  NameInputState(this.userName);
  @override
  List<Object> get props => [];
}

class DueDateInputState extends LoginState {
  @override
  List<Object> get props => [];
}

class DueDateCalculateState extends LoginState {
  @override
  List<Object> get props => [];
}

class CategorySelectState extends LoginState {
  @override
  List<Object> get props => [];
}

class SelectLanguageState extends LoginState {
  @override
  List<Object> get props => [];
}

class EnterPhoneNoState extends LoginState {
  @override
  List<Object> get props => [];
}

class OtpSentState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoadingState extends LoginState {
  @override
  List<Object> get props => [];
}

class OtpVerifiedState extends LoginState {
  final UserModel user;
  OtpVerifiedState(this.user);
  @override
  List<Object> get props => [];
}

class LoginCompleteState extends LoginState {
  final User _firebaseUser;

  LoginCompleteState(this._firebaseUser);
  User getUser() {
    return _firebaseUser;
  }

  @override
  List<Object> get props => [_firebaseUser];
}

class ExceptionState extends LoginState {
  final String message;

  ExceptionState({this.message});

  @override
  List<Object> get props => [message];
}

class OtpExceptionState extends LoginState {
  final String message;

  OtpExceptionState({this.message});

  @override
  List<Object> get props => [message];
}
