// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return _AuthToken.fromJson(json);
}

/// @nodoc
mixin _$AuthToken {
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  List<String> get abilities => throw _privateConstructorUsedError;
  DateTime? get lastUsedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this AuthToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokenCopyWith<AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenCopyWith<$Res> {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) then) =
      _$AuthTokenCopyWithImpl<$Res, AuthToken>;
  @useResult
  $Res call(
      {String type,
      String? name,
      String? token,
      List<String> abilities,
      DateTime? lastUsedAt,
      DateTime? expiresAt});
}

/// @nodoc
class _$AuthTokenCopyWithImpl<$Res, $Val extends AuthToken>
    implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? token = freezed,
    Object? abilities = null,
    Object? lastUsedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastUsedAt: freezed == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenImplCopyWith<$Res>
    implements $AuthTokenCopyWith<$Res> {
  factory _$$AuthTokenImplCopyWith(
          _$AuthTokenImpl value, $Res Function(_$AuthTokenImpl) then) =
      __$$AuthTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String? name,
      String? token,
      List<String> abilities,
      DateTime? lastUsedAt,
      DateTime? expiresAt});
}

/// @nodoc
class __$$AuthTokenImplCopyWithImpl<$Res>
    extends _$AuthTokenCopyWithImpl<$Res, _$AuthTokenImpl>
    implements _$$AuthTokenImplCopyWith<$Res> {
  __$$AuthTokenImplCopyWithImpl(
      _$AuthTokenImpl _value, $Res Function(_$AuthTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
    Object? token = freezed,
    Object? abilities = null,
    Object? lastUsedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$AuthTokenImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastUsedAt: freezed == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenImpl implements _AuthToken {
  _$AuthTokenImpl(
      {required this.type,
      required this.name,
      this.token,
      required final List<String> abilities,
      required this.lastUsedAt,
      required this.expiresAt})
      : _abilities = abilities;

  factory _$AuthTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenImplFromJson(json);

  @override
  final String type;
  @override
  final String? name;
  @override
  final String? token;
  final List<String> _abilities;
  @override
  List<String> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final DateTime? lastUsedAt;
  @override
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'AuthToken(type: $type, name: $name, token: $token, abilities: $abilities, lastUsedAt: $lastUsedAt, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                other.lastUsedAt == lastUsedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, token,
      const DeepCollectionEquality().hash(_abilities), lastUsedAt, expiresAt);

  /// Create a copy of AuthToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      __$$AuthTokenImplCopyWithImpl<_$AuthTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenImplToJson(
      this,
    );
  }
}

abstract class _AuthToken implements AuthToken {
  factory _AuthToken(
      {required final String type,
      required final String? name,
      final String? token,
      required final List<String> abilities,
      required final DateTime? lastUsedAt,
      required final DateTime? expiresAt}) = _$AuthTokenImpl;

  factory _AuthToken.fromJson(Map<String, dynamic> json) =
      _$AuthTokenImpl.fromJson;

  @override
  String get type;
  @override
  String? get name;
  @override
  String? get token;
  @override
  List<String> get abilities;
  @override
  DateTime? get lastUsedAt;
  @override
  DateTime? get expiresAt;

  /// Create a copy of AuthToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) {
  return _AccessToken.fromJson(json);
}

/// @nodoc
mixin _$AccessToken {
// identifier: string | number | BigInt;
  dynamic get identifier => throw _privateConstructorUsedError; // tokenableId
  dynamic get tokenableId =>
      throw _privateConstructorUsedError; // value?: Secret<string>;
  dynamic get value =>
      throw _privateConstructorUsedError; // name: string | null;
  String? get name => throw _privateConstructorUsedError; // type: string;
  String get type => throw _privateConstructorUsedError; // abilities: string[];
  List<String> get abilities =>
      throw _privateConstructorUsedError; // hash: string;
  String get hash => throw _privateConstructorUsedError; // createdAt
  DateTime get createdAt => throw _privateConstructorUsedError; // updatedAt
  DateTime get updatedAt => throw _privateConstructorUsedError; // expiresAt
  DateTime? get expiresAt => throw _privateConstructorUsedError; // lastUsedAt
  DateTime? get lastUsedAt => throw _privateConstructorUsedError;

  /// Serializes this AccessToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccessToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res, AccessToken>;
  @useResult
  $Res call(
      {dynamic identifier,
      dynamic tokenableId,
      dynamic value,
      String? name,
      String type,
      List<String> abilities,
      String hash,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? expiresAt,
      DateTime? lastUsedAt});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res, $Val extends AccessToken>
    implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? tokenableId = freezed,
    Object? value = freezed,
    Object? name = freezed,
    Object? type = null,
    Object? abilities = null,
    Object? hash = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? expiresAt = freezed,
    Object? lastUsedAt = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenableId: freezed == tokenableId
          ? _value.tokenableId
          : tokenableId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUsedAt: freezed == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessTokenImplCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$$AccessTokenImplCopyWith(
          _$AccessTokenImpl value, $Res Function(_$AccessTokenImpl) then) =
      __$$AccessTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic identifier,
      dynamic tokenableId,
      dynamic value,
      String? name,
      String type,
      List<String> abilities,
      String hash,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? expiresAt,
      DateTime? lastUsedAt});
}

/// @nodoc
class __$$AccessTokenImplCopyWithImpl<$Res>
    extends _$AccessTokenCopyWithImpl<$Res, _$AccessTokenImpl>
    implements _$$AccessTokenImplCopyWith<$Res> {
  __$$AccessTokenImplCopyWithImpl(
      _$AccessTokenImpl _value, $Res Function(_$AccessTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? tokenableId = freezed,
    Object? value = freezed,
    Object? name = freezed,
    Object? type = null,
    Object? abilities = null,
    Object? hash = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? expiresAt = freezed,
    Object? lastUsedAt = freezed,
  }) {
    return _then(_$AccessTokenImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenableId: freezed == tokenableId
          ? _value.tokenableId
          : tokenableId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUsedAt: freezed == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenImpl implements _AccessToken {
  _$AccessTokenImpl(
      {required this.identifier,
      required this.tokenableId,
      this.value,
      this.name,
      required this.type,
      required final List<String> abilities,
      required this.hash,
      required this.createdAt,
      required this.updatedAt,
      this.expiresAt,
      this.lastUsedAt})
      : _abilities = abilities;

  factory _$AccessTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenImplFromJson(json);

// identifier: string | number | BigInt;
  @override
  final dynamic identifier;
// tokenableId
  @override
  final dynamic tokenableId;
// value?: Secret<string>;
  @override
  final dynamic value;
// name: string | null;
  @override
  final String? name;
// type: string;
  @override
  final String type;
// abilities: string[];
  final List<String> _abilities;
// abilities: string[];
  @override
  List<String> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

// hash: string;
  @override
  final String hash;
// createdAt
  @override
  final DateTime createdAt;
// updatedAt
  @override
  final DateTime updatedAt;
// expiresAt
  @override
  final DateTime? expiresAt;
// lastUsedAt
  @override
  final DateTime? lastUsedAt;

  @override
  String toString() {
    return 'AccessToken(identifier: $identifier, tokenableId: $tokenableId, value: $value, name: $name, type: $type, abilities: $abilities, hash: $hash, createdAt: $createdAt, updatedAt: $updatedAt, expiresAt: $expiresAt, lastUsedAt: $lastUsedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenImpl &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier) &&
            const DeepCollectionEquality()
                .equals(other.tokenableId, tokenableId) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                other.lastUsedAt == lastUsedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identifier),
      const DeepCollectionEquality().hash(tokenableId),
      const DeepCollectionEquality().hash(value),
      name,
      type,
      const DeepCollectionEquality().hash(_abilities),
      hash,
      createdAt,
      updatedAt,
      expiresAt,
      lastUsedAt);

  /// Create a copy of AccessToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenImplCopyWith<_$AccessTokenImpl> get copyWith =>
      __$$AccessTokenImplCopyWithImpl<_$AccessTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenImplToJson(
      this,
    );
  }
}

abstract class _AccessToken implements AccessToken {
  factory _AccessToken(
      {required final dynamic identifier,
      required final dynamic tokenableId,
      final dynamic value,
      final String? name,
      required final String type,
      required final List<String> abilities,
      required final String hash,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? expiresAt,
      final DateTime? lastUsedAt}) = _$AccessTokenImpl;

  factory _AccessToken.fromJson(Map<String, dynamic> json) =
      _$AccessTokenImpl.fromJson;

// identifier: string | number | BigInt;
  @override
  dynamic get identifier; // tokenableId
  @override
  dynamic get tokenableId; // value?: Secret<string>;
  @override
  dynamic get value; // name: string | null;
  @override
  String? get name; // type: string;
  @override
  String get type; // abilities: string[];
  @override
  List<String> get abilities; // hash: string;
  @override
  String get hash; // createdAt
  @override
  DateTime get createdAt; // updatedAt
  @override
  DateTime get updatedAt; // expiresAt
  @override
  DateTime? get expiresAt; // lastUsedAt
  @override
  DateTime? get lastUsedAt;

  /// Create a copy of AccessToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessTokenImplCopyWith<_$AccessTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
