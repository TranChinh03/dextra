part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {}

class AuthenticationInitialized extends AuthenticationEvent {}

class UpdateAuthenticationStateEvent extends AuthenticationEvent {
  final GoRouterState? authenticationState;
  final String? redirectPath;
  final bool? isLoggedIn;

  UpdateAuthenticationStateEvent({
    this.authenticationState,
    this.redirectPath,
    this.isLoggedIn,
  });
}
