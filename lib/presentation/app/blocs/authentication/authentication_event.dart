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

class SignInWithUsernamePasswordEvent extends AuthenticationEvent {
  final String username;
  final String password;

  SignInWithUsernamePasswordEvent({
    required this.username,
    required this.password,
  });
}

class SignUpWithUsernamePasswordEvent extends AuthenticationEvent {
  final String username;
  final String password;

  SignUpWithUsernamePasswordEvent({
    required this.username,
    required this.password,
  });
}

class SignOutEvent extends AuthenticationEvent {}
