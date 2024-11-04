part of 'auth_bloc.dart';

@immutable
class AuthState {
  final AuthResponse<User>? auth;
  const AuthState({this.auth});

  // is signed in
  bool get isSignedIn => auth != null;
}

final class AuthInitial extends AuthState {}

// Loading state
final class AuthLoading extends AuthState {
  final bool loading;
  const AuthLoading(this.loading);
}

// Error state
final class AuthError extends AuthState {
  final String message;
  const AuthError(this.message);
}

// validation error
final class AuthValidationError extends AuthState {
  final FeeefValidationException exception;
  const AuthValidationError(this.exception);
}

// Unauthenticated state
final class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}
