part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SendOtpEvent extends LoginEvent {
  final String phoNo;

  SendOtpEvent({this.phoNo});
}

class AppStartEvent extends LoginEvent {}

class NameEnteredEvent extends LoginEvent {
  final String userName;
  NameEnteredEvent(this.userName);
}

class DueDateEnteredEvent extends LoginEvent {
  final DateTime dueDate;
  DueDateEnteredEvent(this.dueDate);
}

class CategorySelectedEvent extends LoginEvent {
  final String selectedCategory;
  CategorySelectedEvent(this.selectedCategory);
}

class LangSelectedEvent extends LoginEvent {
  final String selectedLang;
  LangSelectedEvent(this.selectedLang);
}

class VerifyOtpEvent extends LoginEvent {
  final String otp;

  VerifyOtpEvent({this.otp});
}

class LogoutEvent extends LoginEvent {}

class OtpSendEvent extends LoginEvent {}

class OtpVerifiedEvent extends LoginEvent {
  final UserModel user;
  OtpVerifiedEvent(this.user);
}

class LoginCompleteEvent extends LoginEvent {
  final User firebaseUser;
  LoginCompleteEvent(this.firebaseUser);
}

class CreateUser extends LoginEvent {
  final UserModel userModel;
  CreateUser(this.userModel);
}

class LoginExceptionEvent extends LoginEvent {
  final String message;

  LoginExceptionEvent(this.message);
}
