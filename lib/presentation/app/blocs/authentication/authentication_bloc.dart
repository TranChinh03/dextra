import 'dart:async';

import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState()) {
    on<UpdateAuthenticationStateEvent>(_onUpdateAuthenticationState);
    on<AuthenticationInitialized>(_onAuthenticationInitialized);
    on<SignInWithGoogleEvent>(_onSignInWithGoogle);
    on<SignInWithUsernamePasswordEvent>(_onSignInWithUsernamePassword);
    on<SignOutEvent>(_onSignOut);

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
        apiState: event.apiState,
        accessToken: event.accessToken,
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

  FutureOr<void> _onSignInWithGoogle(
    SignInWithGoogleEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      state.copyWith(
        apiState: ApiState(status: ApiStatus.loading),
      ),
    );

    final FirebaseAuth auth = FirebaseAuth.instance;
    GoogleAuthProvider authProvider = GoogleAuthProvider();
    try {
      final UserCredential userCredential =
          await auth.signInWithPopup(authProvider);
      if (userCredential.user != null &&
          userCredential.credential?.accessToken != null) {
        emit(
          state.copyWith(
            apiState: ApiState(status: ApiStatus.hasData),
            isLoggedIn: true,
            accessToken: userCredential.credential?.accessToken,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          apiState: ApiState(
            status: ApiStatus.error,
            errorResponse: BaseApiResponse(
              message: e.toString(),
            ),
          ),
          isLoggedIn: false,
          accessToken: "",
        ),
      );
    }
  }

  FutureOr<void> _onSignInWithUsernamePassword(
    SignInWithUsernamePasswordEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      state.copyWith(
        apiState: ApiState(status: ApiStatus.loading),
      ),
    );

    final FirebaseAuth auth = FirebaseAuth.instance;

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: event.username,
        password: event.password,
      );
      if (userCredential.user != null) {
        emit(
          state.copyWith(
            apiState: ApiState(status: ApiStatus.hasData),
            isLoggedIn: true,
            accessToken: userCredential.credential?.accessToken,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          apiState: ApiState(
            status: ApiStatus.error,
            errorResponse: BaseApiResponse(
              message: e.toString(),
            ),
          ),
          isLoggedIn: false,
          accessToken: "",
        ),
      );
    }
  }

  FutureOr<void> _onSignOut(
    SignOutEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      state.copyWith(
        apiState: ApiState(status: ApiStatus.loading),
      ),
    );

    final FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();

    try {
      emit(
        state.copyWith(
          apiState: ApiState(status: ApiStatus.hasData),
          isLoggedIn: false,
          accessToken: "",
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          apiState: ApiState(
            status: ApiStatus.error,
            errorResponse: BaseApiResponse(
              message: e.toString(),
            ),
          ),
        ),
      );
    }
  }
}
