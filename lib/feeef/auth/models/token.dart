import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class AuthToken with _$AuthToken {
  factory AuthToken({
    required String type,
    required String? name,
    String? token,
    required List<String> abilities,
    required DateTime? lastUsedAt,
    required DateTime? expiresAt,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) => _$AuthTokenFromJson(json);
}

// AccessToken
@freezed
class AccessToken with _$AccessToken {
  factory AccessToken({
    // identifier: string | number | BigInt;
    required dynamic identifier,
    // tokenableId
    required dynamic tokenableId,
    // value?: Secret<string>;
    dynamic value,
    // name: string | null;
    String? name,
    // type: string;
    required String type,
    // abilities: string[];
    required List<String> abilities,
    // hash: string;
    required String hash,
    // createdAt
    required DateTime createdAt,
    // updatedAt
    required DateTime updatedAt,
    // expiresAt
    DateTime? expiresAt,
    // lastUsedAt
    DateTime? lastUsedAt,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);
}
