part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {}

class AuthenticationInitialized extends AuthenticationEvent {}

class UpdateAuthenticationStateEvent extends AuthenticationEvent {
  final GoRouterState? authenticationState;
  final String? redirectPath;
  final bool? isLoggedIn;
  final ApiState? apiState;
  final String? accessToken;

  UpdateAuthenticationStateEvent({
    this.authenticationState,
    this.redirectPath,
    this.isLoggedIn,
    this.apiState,
    this.accessToken,
  });
}

class SignInWithGoogleEvent extends AuthenticationEvent {}

class SignInWithEmailPasswordEvent extends AuthenticationEvent {
  final String email;
  final String password;

  SignInWithEmailPasswordEvent({
    required this.email,
    required this.password,
  });
}

class SignUpWithEmailPasswordEvent extends AuthenticationEvent {
  final String userName;
  final String email;
  final String password;

  SignUpWithEmailPasswordEvent({
    required this.userName,
    required this.email,
    required this.password,
  });
}

class SignOutEvent extends AuthenticationEvent {}
