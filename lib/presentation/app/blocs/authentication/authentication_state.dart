part of 'authentication_bloc.dart';

@immutable
class AuthenticationState extends Equatable {
  final GoRouterState? authenticationState;
  final String? redirectPath;
  final bool? isLoggedIn;
  final ApiState? apiState;
  final String? accessToken;


  const AuthenticationState({
    this.authenticationState,
    this.redirectPath,
    this.isLoggedIn = false,
    this.apiState,
    this.accessToken,
  });

  AuthenticationState copyWith({
    GoRouterState? authenticationState,
    String? redirectPath,
    bool? isLoggedIn,
    ApiState? apiState,
    String? accessToken,
  }) {
    return AuthenticationState(
      authenticationState: authenticationState ?? this.authenticationState,
      redirectPath: redirectPath ?? this.redirectPath,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      apiState: apiState ?? this.apiState,
      accessToken: accessToken ?? this.accessToken,
    );
  }

  @override
  List<Object?> get props => [
        authenticationState,
        redirectPath,
        isLoggedIn,
        apiState,
        accessToken
      ];
}
