import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/domains/auth/models/auth_user.dart';

abstract class AuthEvent {}
class LoginEvent extends AuthEvent {
  final String username;
  final String name;

  LoginEvent(this.username, this.name);
}

class LogoutEvent extends AuthEvent {}

class AuthBloc extends Bloc<AuthEvent, AuthUser?> {
  AuthBloc() : super(null) {
    on<LoginEvent>((event, emit) {
      AuthUser user = AuthUser(event.username, event.name);
      emit(user);
    });

    on<LogoutEvent>((event, emit) => emit(null));
  }
}