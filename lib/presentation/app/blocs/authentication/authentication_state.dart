part of 'authentication_bloc.dart';

@immutable
class AuthenticationState extends Equatable {
  final GoRouterState? authenticationState;
  final String? redirectPath;
  final bool? isLoggedIn;

  const AuthenticationState({
    this.authenticationState,
    this.redirectPath,
    this.isLoggedIn,
  });

  AuthenticationState copyWith({
    GoRouterState? authenticationState,
    String? redirectPath,
    bool? isLoggedIn,
  }) {
    return AuthenticationState(
      authenticationState: authenticationState ?? this.authenticationState,
      redirectPath: redirectPath ?? this.redirectPath,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }

  @override
  List<Object?> get props => [
        authenticationState,
        redirectPath,
        isLoggedIn,
      ];
}
