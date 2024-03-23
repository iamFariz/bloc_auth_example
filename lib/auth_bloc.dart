import 'package:bloc_auth_example/auth_state.dart';
import 'package:bloc_auth_example/auth_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(
      (event, emit) async {
        emit(AuthLoading());
        await Future.delayed(const Duration(seconds: 5));
        emit(AuthSuccess(name: 'FadilaRizka'));
      },
    );
    on<LogoutEvent>(
      (event, emit) async {
        emit(AuthLoading());
        await Future.delayed(const Duration(seconds: 5));
        emit(AuthInitial());
      },
    );
  }
}
