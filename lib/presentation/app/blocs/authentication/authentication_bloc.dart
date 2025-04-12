import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState()) {
    on<UpdateAuthenticationStateEvent>(_onUpdateAuthenticationState);
    on<AuthenticationInitialized>(_onAuthenticationInitialized);

    // Emit the initial state to reset the existing state
    add(AuthenticationInitialized());
  }

  void _onUpdateAuthenticationState(
    UpdateAuthenticationStateEvent event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      state.copyWith(
        authenticationState: event.authenticationState,
        redirectPath: event.redirectPath,
        isLoggedIn: event.isLoggedIn,
      ),
    );
  }

  void _onAuthenticationInitialized(
    AuthenticationInitialized event,
    Emitter<AuthenticationState> emit,
  ) {
    // Emit the initial state to reset the existing state
    emit(const AuthenticationState());
  }
}
