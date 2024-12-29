// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

// 🌎 Project imports:
import '/Models/UserModel.dart';
import '/data/user_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._userRepository) : super(InitialLoginState());
  final UserRepository _userRepository;
  StreamSubscription subscription;

  String _userName, _categorySelected, _langSelected;
  DateTime _dueDate;

  String verID = "";

  bool loginCompleted = false;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is AppStartEvent) {
      yield SelectLanguageState();
    } else if (event is LangSelectedEvent) {
      _langSelected = event.selectedLang;
      yield EnterPhoneNoState();
    } else if (event is SendOtpEvent) {
      yield LoadingState();
      subscription = sendOtp(event.phoNo).listen((event) {
        add(event);
      });
    } else if (event is OtpSendEvent) {
      yield OtpSentState();
    } else if (event is LoginCompleteEvent) {
      yield LoginCompleteState(event.firebaseUser);
    } else if (event is LoginExceptionEvent) {
      yield ExceptionState(message: event.message);
    } else if (event is VerifyOtpEvent) {
      yield LoadingState();
      try {
        UserCredential result =
            await _userRepository.verifyAndLogin(verID, event.otp);
        if (result.user != null) {
          // yield LoginCompleteState(result.user);
          UserModel user = await _userRepository.getMyUser(result.user.uid);
          // yield OtpVerifiedState(user);
          yield NameInputState(user.fullName);
        } else {
          yield OtpExceptionState(message: "Invalid otp!");
        }
      } catch (e) {
        yield OtpExceptionState(message: "Invalid otp!");
        print(e);
      }
    } else if (event is OtpVerifiedEvent) {
      yield event.user == null
          ? NameInputState('')
          : NameInputState(event.user.fullName);
    } else if (event is NameEnteredEvent) {
      yield CategorySelectState();
      _userName = event.userName;
    } else if (event is CategorySelectedEvent) {
      _categorySelected = event.selectedCategory;
      yield DueDateInputState();
    } else if (event is DueDateEnteredEvent) {
      _dueDate = event.dueDate;
      loginCompleted = true;
      yield LoadingState();
      _createUser();
    }
  }

  @override
  void onEvent(LoginEvent event) {
    super.onEvent(event);
    print(event);
  }

  @override
  void onError(Object error, StackTrace stacktrace) {
    super.onError(error, stacktrace);
    print(stacktrace);
  }

  Future<void> close() async {
    if (!loginCompleted) {
      _userRepository.logOut();
      print("Loged out of the app because login was not completed");
    }
    subscription.cancel();
    print("Bloc closed");
    super.close();
  }

  Future<void> _createUser() async {
    User _firUser = _userRepository.getFirUser();
    UserModel _user = UserModel(
        uid: _firUser.uid,
        phone: _firUser.phoneNumber,
        fullName: _userName,
        dueDate: _dueDate,
        language: _langSelected,
        category: _categorySelected);
    return await _userRepository.createUser(_user);
  }

  Stream<LoginEvent> sendOtp(String phoNo) async* {
    StreamController<LoginEvent> eventStream = StreamController();
    final phoneVerificationCompleted = (AuthCredential authCredential) {
      _userRepository.signInAfterAutoVerify(authCredential);
      _userRepository.getUser().catchError((onError) {
        print(onError);
      }).then((user) {
        eventStream.add(OtpVerifiedEvent(user));
        eventStream.close();
      });
    };
    final phoneVerificationFailed = (FirebaseAuthException authException) {
      eventStream.add(LoginExceptionEvent(authException.message));
      eventStream.close();
    };
    final phoneCodeSent = (String verId, [int forceResent]) {
      this.verID = verId;
      eventStream.add(OtpSendEvent());
    };
    final phoneCodeAutoRetrievalTimeout = (String verid) {
      this.verID = verid;
      eventStream.close();
    };

    await _userRepository.sendOtp(
        phoNo,
        phoneVerificationFailed,
        phoneVerificationCompleted,
        phoneCodeSent,
        phoneCodeAutoRetrievalTimeout);

    yield* eventStream.stream;
  }
}
