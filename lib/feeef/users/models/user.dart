import 'package:feeef_marchant/feeef/interfaces/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends UserEntity with _$User implements Model, ModelMetadata {
  factory User({
    required String id,
    required String? name,
    required String email,
    required String? phone,
    required String? photoUrl,
    required DateTime? emailVerifiedAt,
    required DateTime? phoneVerifiedAt,
    required DateTime? verifiedAt,
    required DateTime? blockedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// UserUpdate
@freezed
class UserUpdate with _$UserUpdate implements ModelUpdate {
  const factory UserUpdate({
    String? name,
    String? email,
    String? phone,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
    // verification
    DateTime? emailVerifiedAt,
    DateTime? phoneVerifiedAt,
    DateTime? verifiedAt,
    // password
    // String? password,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _UserUpdate;

  factory UserUpdate.fromJson(Map<String, dynamic> json) => _$UserUpdateFromJson(json);
}

// // UserChangePassword
// @freezed
// class UserChangePassword with _$UserChangePassword implements ModelAuthChangePassword {
//   const factory UserChangePassword({
//     required String oldPassword,
//     required String newPassword,
//   }) = _UserChangePassword;

//   factory UserChangePassword.fromJson(Map<String, dynamic> json) => _$UserChangePasswordFromJson(json);
// }

// UserUpdateMe (also conatin password change)
@freezed
class UserUpdateMe with _$UserUpdateMe implements ModelUpdate {
  const factory UserUpdateMe({
    String? name,
    String? email,
    String? phone,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
    // verification
    DateTime? emailVerifiedAt,
    DateTime? phoneVerifiedAt,
    DateTime? verifiedAt,
    // password
    String? oldPassword,
    String? newPassword,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _UserUpdateMe;

  factory UserUpdateMe.fromJson(Map<String, dynamic> json) => _$UserUpdateMeFromJson(json);
}
