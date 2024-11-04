abstract class UserEntity {
  String? get name;
  String get email;
  String? get phone;
  String? get photoUrl;
  DateTime? get emailVerifiedAt;
  DateTime? get phoneVerifiedAt;
  DateTime? get verifiedAt;
  DateTime? get blockedAt;
}
