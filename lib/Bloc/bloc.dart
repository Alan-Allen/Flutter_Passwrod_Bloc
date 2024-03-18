import 'dart:async';
import 'package:bloc/bloc.dart';

enum LoginEvent { login, logout, register }

abstract class LoginState {}

class AuthenticatedState extends LoginState {
  final String username;

  AuthenticatedState(this.username);
}

class UnauthenticatedState extends LoginState {}

// 创建 BLoC
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(UnauthenticatedState());

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event == LoginEvent.login) {
      await Future.delayed(Duration(seconds: 1));
      yield AuthenticatedState("user123");
    } else if (event == LoginEvent.logout) {
      yield UnauthenticatedState();
    } else if (event == LoginEvent.register) {
      await Future.delayed(Duration(seconds: 1));
      yield AuthenticatedState("new_user");
    }
  }
}