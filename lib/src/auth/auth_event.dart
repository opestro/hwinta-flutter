part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {
  const AuthEvent();
}

// AuthSignin
class AuthSignin extends AuthEvent {
  final String email;
  final String password;
  const AuthSignin({
    required this.email,
    required this.password,
  });
}

// AuthSignup
class AuthSignup extends AuthEvent {
  /// Referral code (another user id)
  final String referral;
  final String name;
  final String email;
  final String? phone;
  final String password;
  const AuthSignup({
    required this.referral,
    required this.name,
    required this.email,
    this.phone,
    required this.password,
  });
}

// AuthResetPassword
class AuthResetPassword extends AuthEvent {
  final String email;
  const AuthResetPassword({
    required this.email,
  });
}

// AuthSignout
class AuthSignout extends AuthEvent {
  const AuthSignout();
}

// check if user is signed in
class AuthCheck extends AuthEvent {
  const AuthCheck();
}

// AuthClear
class AuthClear extends AuthEvent {
  const AuthClear();
}
