// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get phoneVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  DateTime? get blockedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String email,
      String? phone,
      String? photoUrl,
      DateTime? emailVerifiedAt,
      DateTime? phoneVerifiedAt,
      DateTime? verifiedAt,
      DateTime? blockedAt,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? verifiedAt = freezed,
    Object? blockedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerifiedAt: freezed == phoneVerifiedAt
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String email,
      String? phone,
      String? photoUrl,
      DateTime? emailVerifiedAt,
      DateTime? phoneVerifiedAt,
      DateTime? verifiedAt,
      DateTime? blockedAt,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? verifiedAt = freezed,
    Object? blockedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerifiedAt: freezed == phoneVerifiedAt
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.photoUrl,
      required this.emailVerifiedAt,
      required this.phoneVerifiedAt,
      required this.verifiedAt,
      required this.blockedAt,
      required this.createdAt,
      required this.updatedAt,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String? photoUrl;
  @override
  final DateTime? emailVerifiedAt;
  @override
  final DateTime? phoneVerifiedAt;
  @override
  final DateTime? verifiedAt;
  @override
  final DateTime? blockedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, blockedAt: $blockedAt, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.phoneVerifiedAt, phoneVerifiedAt) ||
                other.phoneVerifiedAt == phoneVerifiedAt) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.blockedAt, blockedAt) ||
                other.blockedAt == blockedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      photoUrl,
      emailVerifiedAt,
      phoneVerifiedAt,
      verifiedAt,
      blockedAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String id,
      required final String? name,
      required final String email,
      required final String? phone,
      required final String? photoUrl,
      required final DateTime? emailVerifiedAt,
      required final DateTime? phoneVerifiedAt,
      required final DateTime? verifiedAt,
      required final DateTime? blockedAt,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final Map<String, dynamic> metadata}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String? get photoUrl;
  @override
  DateTime? get emailVerifiedAt;
  @override
  DateTime? get phoneVerifiedAt;
  @override
  DateTime? get verifiedAt;
  @override
  DateTime? get blockedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdate _$UserUpdateFromJson(Map<String, dynamic> json) {
  return _UserUpdate.fromJson(json);
}

/// @nodoc
mixin _$UserUpdate {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata =>
      throw _privateConstructorUsedError; // verification
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get phoneVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError; // password
// String? password,
  @JsonKey(includeFromJson: false)
  List<String> get setToNull => throw _privateConstructorUsedError;

  /// Serializes this UserUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateCopyWith<UserUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateCopyWith<$Res> {
  factory $UserUpdateCopyWith(
          UserUpdate value, $Res Function(UserUpdate) then) =
      _$UserUpdateCopyWithImpl<$Res, UserUpdate>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phone,
      String? photoUrl,
      Map<String, dynamic> metadata,
      DateTime? emailVerifiedAt,
      DateTime? phoneVerifiedAt,
      DateTime? verifiedAt,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class _$UserUpdateCopyWithImpl<$Res, $Val extends UserUpdate>
    implements $UserUpdateCopyWith<$Res> {
  _$UserUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? metadata = null,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? verifiedAt = freezed,
    Object? setToNull = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerifiedAt: freezed == phoneVerifiedAt
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      setToNull: null == setToNull
          ? _value.setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateImplCopyWith<$Res>
    implements $UserUpdateCopyWith<$Res> {
  factory _$$UserUpdateImplCopyWith(
          _$UserUpdateImpl value, $Res Function(_$UserUpdateImpl) then) =
      __$$UserUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phone,
      String? photoUrl,
      Map<String, dynamic> metadata,
      DateTime? emailVerifiedAt,
      DateTime? phoneVerifiedAt,
      DateTime? verifiedAt,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class __$$UserUpdateImplCopyWithImpl<$Res>
    extends _$UserUpdateCopyWithImpl<$Res, _$UserUpdateImpl>
    implements _$$UserUpdateImplCopyWith<$Res> {
  __$$UserUpdateImplCopyWithImpl(
      _$UserUpdateImpl _value, $Res Function(_$UserUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? metadata = null,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? verifiedAt = freezed,
    Object? setToNull = null,
  }) {
    return _then(_$UserUpdateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerifiedAt: freezed == phoneVerifiedAt
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      setToNull: null == setToNull
          ? _value._setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateImpl implements _UserUpdate {
  const _$UserUpdateImpl(
      {this.name,
      this.email,
      this.phone,
      this.photoUrl,
      final Map<String, dynamic> metadata = const {},
      this.emailVerifiedAt,
      this.phoneVerifiedAt,
      this.verifiedAt,
      @JsonKey(includeFromJson: false) final List<String> setToNull = const []})
      : _metadata = metadata,
        _setToNull = setToNull;

  factory _$UserUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? photoUrl;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// verification
  @override
  final DateTime? emailVerifiedAt;
  @override
  final DateTime? phoneVerifiedAt;
  @override
  final DateTime? verifiedAt;
// password
// String? password,
  final List<String> _setToNull;
// password
// String? password,
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull {
    if (_setToNull is EqualUnmodifiableListView) return _setToNull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setToNull);
  }

  @override
  String toString() {
    return 'UserUpdate(name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, metadata: $metadata, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, setToNull: $setToNull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.phoneVerifiedAt, phoneVerifiedAt) ||
                other.phoneVerifiedAt == phoneVerifiedAt) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            const DeepCollectionEquality()
                .equals(other._setToNull, _setToNull));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      phone,
      photoUrl,
      const DeepCollectionEquality().hash(_metadata),
      emailVerifiedAt,
      phoneVerifiedAt,
      verifiedAt,
      const DeepCollectionEquality().hash(_setToNull));

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateImplCopyWith<_$UserUpdateImpl> get copyWith =>
      __$$UserUpdateImplCopyWithImpl<_$UserUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateImplToJson(
      this,
    );
  }
}

abstract class _UserUpdate implements UserUpdate {
  const factory _UserUpdate(
          {final String? name,
          final String? email,
          final String? phone,
          final String? photoUrl,
          final Map<String, dynamic> metadata,
          final DateTime? emailVerifiedAt,
          final DateTime? phoneVerifiedAt,
          final DateTime? verifiedAt,
          @JsonKey(includeFromJson: false) final List<String> setToNull}) =
      _$UserUpdateImpl;

  factory _UserUpdate.fromJson(Map<String, dynamic> json) =
      _$UserUpdateImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get photoUrl;
  @override
  Map<String, dynamic> get metadata; // verification
  @override
  DateTime? get emailVerifiedAt;
  @override
  DateTime? get phoneVerifiedAt;
  @override
  DateTime? get verifiedAt; // password
// String? password,
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull;

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateImplCopyWith<_$UserUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdateMe _$UserUpdateMeFromJson(Map<String, dynamic> json) {
  return _UserUpdateMe.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateMe {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata =>
      throw _privateConstructorUsedError; // verification
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get phoneVerifiedAt => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError; // password
  String? get oldPassword => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  List<String> get setToNull => throw _privateConstructorUsedError;

  /// Serializes this UserUpdateMe to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdateMe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateMeCopyWith<UserUpdateMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateMeCopyWith<$Res> {
  factory $UserUpdateMeCopyWith(
          UserUpdateMe value, $Res Function(UserUpdateMe) then) =
      _$UserUpdateMeCopyWithImpl<$Res, UserUpdateMe>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phone,
      String? photoUrl,
      Map<String, dynamic> metadata,
      DateTime? emailVerifiedAt,
      DateTime? phoneVerifiedAt,
      DateTime? verifiedAt,
      String? oldPassword,
      String? newPassword,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class _$UserUpdateMeCopyWithImpl<$Res, $Val extends UserUpdateMe>
    implements $UserUpdateMeCopyWith<$Res> {
  _$UserUpdateMeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateMe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? metadata = null,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? verifiedAt = freezed,
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? setToNull = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerifiedAt: freezed == phoneVerifiedAt
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      setToNull: null == setToNull
          ? _value.setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateMeImplCopyWith<$Res>
    implements $UserUpdateMeCopyWith<$Res> {
  factory _$$UserUpdateMeImplCopyWith(
          _$UserUpdateMeImpl value, $Res Function(_$UserUpdateMeImpl) then) =
      __$$UserUpdateMeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phone,
      String? photoUrl,
      Map<String, dynamic> metadata,
      DateTime? emailVerifiedAt,
      DateTime? phoneVerifiedAt,
      DateTime? verifiedAt,
      String? oldPassword,
      String? newPassword,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class __$$UserUpdateMeImplCopyWithImpl<$Res>
    extends _$UserUpdateMeCopyWithImpl<$Res, _$UserUpdateMeImpl>
    implements _$$UserUpdateMeImplCopyWith<$Res> {
  __$$UserUpdateMeImplCopyWithImpl(
      _$UserUpdateMeImpl _value, $Res Function(_$UserUpdateMeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateMe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
    Object? metadata = null,
    Object? emailVerifiedAt = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? verifiedAt = freezed,
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? setToNull = null,
  }) {
    return _then(_$UserUpdateMeImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneVerifiedAt: freezed == phoneVerifiedAt
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      setToNull: null == setToNull
          ? _value._setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateMeImpl implements _UserUpdateMe {
  const _$UserUpdateMeImpl(
      {this.name,
      this.email,
      this.phone,
      this.photoUrl,
      final Map<String, dynamic> metadata = const {},
      this.emailVerifiedAt,
      this.phoneVerifiedAt,
      this.verifiedAt,
      this.oldPassword,
      this.newPassword,
      @JsonKey(includeFromJson: false) final List<String> setToNull = const []})
      : _metadata = metadata,
        _setToNull = setToNull;

  factory _$UserUpdateMeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateMeImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? photoUrl;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// verification
  @override
  final DateTime? emailVerifiedAt;
  @override
  final DateTime? phoneVerifiedAt;
  @override
  final DateTime? verifiedAt;
// password
  @override
  final String? oldPassword;
  @override
  final String? newPassword;
  final List<String> _setToNull;
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull {
    if (_setToNull is EqualUnmodifiableListView) return _setToNull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setToNull);
  }

  @override
  String toString() {
    return 'UserUpdateMe(name: $name, email: $email, phone: $phone, photoUrl: $photoUrl, metadata: $metadata, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt, verifiedAt: $verifiedAt, oldPassword: $oldPassword, newPassword: $newPassword, setToNull: $setToNull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateMeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.phoneVerifiedAt, phoneVerifiedAt) ||
                other.phoneVerifiedAt == phoneVerifiedAt) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            const DeepCollectionEquality()
                .equals(other._setToNull, _setToNull));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      phone,
      photoUrl,
      const DeepCollectionEquality().hash(_metadata),
      emailVerifiedAt,
      phoneVerifiedAt,
      verifiedAt,
      oldPassword,
      newPassword,
      const DeepCollectionEquality().hash(_setToNull));

  /// Create a copy of UserUpdateMe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateMeImplCopyWith<_$UserUpdateMeImpl> get copyWith =>
      __$$UserUpdateMeImplCopyWithImpl<_$UserUpdateMeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateMeImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateMe implements UserUpdateMe {
  const factory _UserUpdateMe(
          {final String? name,
          final String? email,
          final String? phone,
          final String? photoUrl,
          final Map<String, dynamic> metadata,
          final DateTime? emailVerifiedAt,
          final DateTime? phoneVerifiedAt,
          final DateTime? verifiedAt,
          final String? oldPassword,
          final String? newPassword,
          @JsonKey(includeFromJson: false) final List<String> setToNull}) =
      _$UserUpdateMeImpl;

  factory _UserUpdateMe.fromJson(Map<String, dynamic> json) =
      _$UserUpdateMeImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get photoUrl;
  @override
  Map<String, dynamic> get metadata; // verification
  @override
  DateTime? get emailVerifiedAt;
  @override
  DateTime? get phoneVerifiedAt;
  @override
  DateTime? get verifiedAt; // password
  @override
  String? get oldPassword;
  @override
  String? get newPassword;
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull;

  /// Create a copy of UserUpdateMe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateMeImplCopyWith<_$UserUpdateMeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
