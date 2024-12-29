// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

// 🌎 Project imports:
import '/Models/UserModel.dart';
import '/data/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this.userRepository) : super(InitialAuthenticationState());
  final UserRepository userRepository;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield Loading();
      final user = await userRepository.getUser();

      if (user != null) {
        yield Authenticated(user);
      } else {
        yield Unauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield Loading();
      final user = await userRepository.getUser();
      yield Authenticated(user);
    }

    if (event is LogOut) {
      yield Loading();
      await userRepository.logOut();
      yield Unauthenticated();
    }
  }
}
