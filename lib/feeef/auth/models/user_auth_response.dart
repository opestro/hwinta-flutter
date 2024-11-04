import 'package:feeef_marchant/feeef/auth/models/token.dart';
import 'package:feeef_marchant/feeef/interfaces/helpers.dart';

class AuthResponse<T extends Model> {
  final T user;
  final AuthToken token;
  const AuthResponse({
    required this.user,
    required this.token,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJson) {
    return AuthResponse(
      user: fromJson(json['user']),
      token: AuthToken.fromJson(json['token']),
    );
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJson) {
    return {
      'user': toJson(user),
      'token': token,
    };
  }

  AuthResponse<T> copyWith({
    T? user,
    AuthToken? token,
  }) {
    return AuthResponse(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthResponse<T> && other.user == user && other.token == token;
  }

  @override
  int get hashCode => user.hashCode ^ token.hashCode;
}
