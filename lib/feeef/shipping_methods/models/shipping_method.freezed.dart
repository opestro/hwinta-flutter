// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingMethod _$ShippingMethodFromJson(Map<String, dynamic> json) {
  return _ShippingMethod.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethod {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get ondarkLogoUrl => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num get forks => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  List<List<num?>?> get rates => throw _privateConstructorUsedError;
  ShippingMethodStatus get status => throw _privateConstructorUsedError;
  ShippingMethodPolicy get policy => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodCopyWith<ShippingMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodCopyWith<$Res> {
  factory $ShippingMethodCopyWith(
          ShippingMethod value, $Res Function(ShippingMethod) then) =
      _$ShippingMethodCopyWithImpl<$Res, ShippingMethod>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic> metadata,
      String name,
      String? description,
      String? logoUrl,
      String? ondarkLogoUrl,
      num price,
      num forks,
      String? sourceId,
      String storeId,
      List<List<num?>?> rates,
      ShippingMethodStatus status,
      ShippingMethodPolicy policy,
      DateTime? verifiedAt});
}

/// @nodoc
class _$ShippingMethodCopyWithImpl<$Res, $Val extends ShippingMethod>
    implements $ShippingMethodCopyWith<$Res> {
  _$ShippingMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? price = null,
    Object? forks = null,
    Object? sourceId = freezed,
    Object? storeId = null,
    Object? rates = null,
    Object? status = null,
    Object? policy = null,
    Object? verifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as num,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShippingMethodStatus,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as ShippingMethodPolicy,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingMethodImplCopyWith<$Res>
    implements $ShippingMethodCopyWith<$Res> {
  factory _$$ShippingMethodImplCopyWith(_$ShippingMethodImpl value,
          $Res Function(_$ShippingMethodImpl) then) =
      __$$ShippingMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic> metadata,
      String name,
      String? description,
      String? logoUrl,
      String? ondarkLogoUrl,
      num price,
      num forks,
      String? sourceId,
      String storeId,
      List<List<num?>?> rates,
      ShippingMethodStatus status,
      ShippingMethodPolicy policy,
      DateTime? verifiedAt});
}

/// @nodoc
class __$$ShippingMethodImplCopyWithImpl<$Res>
    extends _$ShippingMethodCopyWithImpl<$Res, _$ShippingMethodImpl>
    implements _$$ShippingMethodImplCopyWith<$Res> {
  __$$ShippingMethodImplCopyWithImpl(
      _$ShippingMethodImpl _value, $Res Function(_$ShippingMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? price = null,
    Object? forks = null,
    Object? sourceId = freezed,
    Object? storeId = null,
    Object? rates = null,
    Object? status = null,
    Object? policy = null,
    Object? verifiedAt = freezed,
  }) {
    return _then(_$ShippingMethodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as num,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShippingMethodStatus,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as ShippingMethodPolicy,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodImpl implements _ShippingMethod {
  _$ShippingMethodImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      final Map<String, dynamic> metadata = const {},
      required this.name,
      this.description,
      this.logoUrl,
      this.ondarkLogoUrl,
      this.price = 0,
      this.forks = 0,
      this.sourceId,
      required this.storeId,
      final List<List<num?>?> rates = const [],
      required this.status,
      required this.policy,
      this.verifiedAt})
      : _metadata = metadata,
        _rates = rates;

  factory _$ShippingMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodImplFromJson(json);

  @override
  final String id;
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
  final String name;
  @override
  final String? description;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;
  @override
  @JsonKey()
  final num price;
  @override
  @JsonKey()
  final num forks;
  @override
  final String? sourceId;
  @override
  final String storeId;
  final List<List<num?>?> _rates;
  @override
  @JsonKey()
  List<List<num?>?> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  final ShippingMethodStatus status;
  @override
  final ShippingMethodPolicy policy;
  @override
  final DateTime? verifiedAt;

  @override
  String toString() {
    return 'ShippingMethod(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, forks: $forks, sourceId: $sourceId, storeId: $storeId, rates: $rates, status: $status, policy: $policy, verifiedAt: $verifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_metadata),
      name,
      description,
      logoUrl,
      ondarkLogoUrl,
      price,
      forks,
      sourceId,
      storeId,
      const DeepCollectionEquality().hash(_rates),
      status,
      policy,
      verifiedAt);

  /// Create a copy of ShippingMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodImplCopyWith<_$ShippingMethodImpl> get copyWith =>
      __$$ShippingMethodImplCopyWithImpl<_$ShippingMethodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodImplToJson(
      this,
    );
  }
}

abstract class _ShippingMethod implements ShippingMethod {
  factory _ShippingMethod(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final Map<String, dynamic> metadata,
      required final String name,
      final String? description,
      final String? logoUrl,
      final String? ondarkLogoUrl,
      final num price,
      final num forks,
      final String? sourceId,
      required final String storeId,
      final List<List<num?>?> rates,
      required final ShippingMethodStatus status,
      required final ShippingMethodPolicy policy,
      final DateTime? verifiedAt}) = _$ShippingMethodImpl;

  factory _ShippingMethod.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Map<String, dynamic> get metadata;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get logoUrl;
  @override
  String? get ondarkLogoUrl;
  @override
  num get price;
  @override
  num get forks;
  @override
  String? get sourceId;
  @override
  String get storeId;
  @override
  List<List<num?>?> get rates;
  @override
  ShippingMethodStatus get status;
  @override
  ShippingMethodPolicy get policy;
  @override
  DateTime? get verifiedAt;

  /// Create a copy of ShippingMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodImplCopyWith<_$ShippingMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingMethodCreate _$ShippingMethodCreateFromJson(Map<String, dynamic> json) {
  return _ShippingMethodCreate.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodCreate {
  String? get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get ondarkLogoUrl => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num get forks => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  List<List<num?>?> get rates => throw _privateConstructorUsedError;
  ShippingMethodStatus get status => throw _privateConstructorUsedError;
  ShippingMethodPolicy get policy => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethodCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodCreateCopyWith<ShippingMethodCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodCreateCopyWith<$Res> {
  factory $ShippingMethodCreateCopyWith(ShippingMethodCreate value,
          $Res Function(ShippingMethodCreate) then) =
      _$ShippingMethodCreateCopyWithImpl<$Res, ShippingMethodCreate>;
  @useResult
  $Res call(
      {String? id,
      Map<String, dynamic> metadata,
      String name,
      String? description,
      String? logoUrl,
      String? ondarkLogoUrl,
      num price,
      num forks,
      String? sourceId,
      String storeId,
      List<List<num?>?> rates,
      ShippingMethodStatus status,
      ShippingMethodPolicy policy,
      DateTime? verifiedAt});
}

/// @nodoc
class _$ShippingMethodCreateCopyWithImpl<$Res,
        $Val extends ShippingMethodCreate>
    implements $ShippingMethodCreateCopyWith<$Res> {
  _$ShippingMethodCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? metadata = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? price = null,
    Object? forks = null,
    Object? sourceId = freezed,
    Object? storeId = null,
    Object? rates = null,
    Object? status = null,
    Object? policy = null,
    Object? verifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as num,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShippingMethodStatus,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as ShippingMethodPolicy,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingMethodCreateImplCopyWith<$Res>
    implements $ShippingMethodCreateCopyWith<$Res> {
  factory _$$ShippingMethodCreateImplCopyWith(_$ShippingMethodCreateImpl value,
          $Res Function(_$ShippingMethodCreateImpl) then) =
      __$$ShippingMethodCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Map<String, dynamic> metadata,
      String name,
      String? description,
      String? logoUrl,
      String? ondarkLogoUrl,
      num price,
      num forks,
      String? sourceId,
      String storeId,
      List<List<num?>?> rates,
      ShippingMethodStatus status,
      ShippingMethodPolicy policy,
      DateTime? verifiedAt});
}

/// @nodoc
class __$$ShippingMethodCreateImplCopyWithImpl<$Res>
    extends _$ShippingMethodCreateCopyWithImpl<$Res, _$ShippingMethodCreateImpl>
    implements _$$ShippingMethodCreateImplCopyWith<$Res> {
  __$$ShippingMethodCreateImplCopyWithImpl(_$ShippingMethodCreateImpl _value,
      $Res Function(_$ShippingMethodCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingMethodCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? metadata = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? price = null,
    Object? forks = null,
    Object? sourceId = freezed,
    Object? storeId = null,
    Object? rates = null,
    Object? status = null,
    Object? policy = null,
    Object? verifiedAt = freezed,
  }) {
    return _then(_$ShippingMethodCreateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as num,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShippingMethodStatus,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as ShippingMethodPolicy,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodCreateImpl implements _ShippingMethodCreate {
  const _$ShippingMethodCreateImpl(
      {this.id,
      final Map<String, dynamic> metadata = const {},
      required this.name,
      this.description,
      this.logoUrl,
      this.ondarkLogoUrl,
      this.price = 0,
      this.forks = 0,
      this.sourceId,
      required this.storeId,
      final List<List<num?>?> rates = const [],
      required this.status,
      required this.policy,
      this.verifiedAt})
      : _metadata = metadata,
        _rates = rates;

  factory _$ShippingMethodCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodCreateImplFromJson(json);

  @override
  final String? id;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final String name;
  @override
  final String? description;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;
  @override
  @JsonKey()
  final num price;
  @override
  @JsonKey()
  final num forks;
  @override
  final String? sourceId;
  @override
  final String storeId;
  final List<List<num?>?> _rates;
  @override
  @JsonKey()
  List<List<num?>?> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  final ShippingMethodStatus status;
  @override
  final ShippingMethodPolicy policy;
  @override
  final DateTime? verifiedAt;

  @override
  String toString() {
    return 'ShippingMethodCreate(id: $id, metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, forks: $forks, sourceId: $sourceId, storeId: $storeId, rates: $rates, status: $status, policy: $policy, verifiedAt: $verifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_metadata),
      name,
      description,
      logoUrl,
      ondarkLogoUrl,
      price,
      forks,
      sourceId,
      storeId,
      const DeepCollectionEquality().hash(_rates),
      status,
      policy,
      verifiedAt);

  /// Create a copy of ShippingMethodCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodCreateImplCopyWith<_$ShippingMethodCreateImpl>
      get copyWith =>
          __$$ShippingMethodCreateImplCopyWithImpl<_$ShippingMethodCreateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodCreateImplToJson(
      this,
    );
  }
}

abstract class _ShippingMethodCreate implements ShippingMethodCreate {
  const factory _ShippingMethodCreate(
      {final String? id,
      final Map<String, dynamic> metadata,
      required final String name,
      final String? description,
      final String? logoUrl,
      final String? ondarkLogoUrl,
      final num price,
      final num forks,
      final String? sourceId,
      required final String storeId,
      final List<List<num?>?> rates,
      required final ShippingMethodStatus status,
      required final ShippingMethodPolicy policy,
      final DateTime? verifiedAt}) = _$ShippingMethodCreateImpl;

  factory _ShippingMethodCreate.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodCreateImpl.fromJson;

  @override
  String? get id;
  @override
  Map<String, dynamic> get metadata;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get logoUrl;
  @override
  String? get ondarkLogoUrl;
  @override
  num get price;
  @override
  num get forks;
  @override
  String? get sourceId;
  @override
  String get storeId;
  @override
  List<List<num?>?> get rates;
  @override
  ShippingMethodStatus get status;
  @override
  ShippingMethodPolicy get policy;
  @override
  DateTime? get verifiedAt;

  /// Create a copy of ShippingMethodCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodCreateImplCopyWith<_$ShippingMethodCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShippingMethodUpdate _$ShippingMethodUpdateFromJson(Map<String, dynamic> json) {
  return _ShippingMethodUpdate.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodUpdate {
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get ondarkLogoUrl => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError; // String? sourceId,
  String? get storeId => throw _privateConstructorUsedError;
  List<List<num?>?>? get rates => throw _privateConstructorUsedError;
  ShippingMethodStatus? get status => throw _privateConstructorUsedError;
  ShippingMethodPolicy? get policy => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  List<String> get setToNull => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethodUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodUpdateCopyWith<ShippingMethodUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodUpdateCopyWith<$Res> {
  factory $ShippingMethodUpdateCopyWith(ShippingMethodUpdate value,
          $Res Function(ShippingMethodUpdate) then) =
      _$ShippingMethodUpdateCopyWithImpl<$Res, ShippingMethodUpdate>;
  @useResult
  $Res call(
      {Map<String, dynamic>? metadata,
      String? name,
      String? description,
      String? logoUrl,
      String? ondarkLogoUrl,
      num? price,
      String? storeId,
      List<List<num?>?>? rates,
      ShippingMethodStatus? status,
      ShippingMethodPolicy? policy,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class _$ShippingMethodUpdateCopyWithImpl<$Res,
        $Val extends ShippingMethodUpdate>
    implements $ShippingMethodUpdateCopyWith<$Res> {
  _$ShippingMethodUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? price = freezed,
    Object? storeId = freezed,
    Object? rates = freezed,
    Object? status = freezed,
    Object? policy = freezed,
    Object? setToNull = null,
  }) {
    return _then(_value.copyWith(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShippingMethodStatus?,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as ShippingMethodPolicy?,
      setToNull: null == setToNull
          ? _value.setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingMethodUpdateImplCopyWith<$Res>
    implements $ShippingMethodUpdateCopyWith<$Res> {
  factory _$$ShippingMethodUpdateImplCopyWith(_$ShippingMethodUpdateImpl value,
          $Res Function(_$ShippingMethodUpdateImpl) then) =
      __$$ShippingMethodUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? metadata,
      String? name,
      String? description,
      String? logoUrl,
      String? ondarkLogoUrl,
      num? price,
      String? storeId,
      List<List<num?>?>? rates,
      ShippingMethodStatus? status,
      ShippingMethodPolicy? policy,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class __$$ShippingMethodUpdateImplCopyWithImpl<$Res>
    extends _$ShippingMethodUpdateCopyWithImpl<$Res, _$ShippingMethodUpdateImpl>
    implements _$$ShippingMethodUpdateImplCopyWith<$Res> {
  __$$ShippingMethodUpdateImplCopyWithImpl(_$ShippingMethodUpdateImpl _value,
      $Res Function(_$ShippingMethodUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingMethodUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? price = freezed,
    Object? storeId = freezed,
    Object? rates = freezed,
    Object? status = freezed,
    Object? policy = freezed,
    Object? setToNull = null,
  }) {
    return _then(_$ShippingMethodUpdateImpl(
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShippingMethodStatus?,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as ShippingMethodPolicy?,
      setToNull: null == setToNull
          ? _value._setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodUpdateImpl implements _ShippingMethodUpdate {
  const _$ShippingMethodUpdateImpl(
      {final Map<String, dynamic>? metadata,
      this.name,
      this.description,
      this.logoUrl,
      this.ondarkLogoUrl,
      this.price,
      this.storeId,
      final List<List<num?>?>? rates,
      this.status,
      this.policy,
      @JsonKey(includeFromJson: false) final List<String> setToNull = const []})
      : _metadata = metadata,
        _rates = rates,
        _setToNull = setToNull;

  factory _$ShippingMethodUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodUpdateImplFromJson(json);

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;
  @override
  final num? price;
// String? sourceId,
  @override
  final String? storeId;
  final List<List<num?>?>? _rates;
  @override
  List<List<num?>?>? get rates {
    final value = _rates;
    if (value == null) return null;
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ShippingMethodStatus? status;
  @override
  final ShippingMethodPolicy? policy;
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
    return 'ShippingMethodUpdate(metadata: $metadata, name: $name, description: $description, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, price: $price, storeId: $storeId, rates: $rates, status: $status, policy: $policy, setToNull: $setToNull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodUpdateImpl &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            const DeepCollectionEquality()
                .equals(other._setToNull, _setToNull));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_metadata),
      name,
      description,
      logoUrl,
      ondarkLogoUrl,
      price,
      storeId,
      const DeepCollectionEquality().hash(_rates),
      status,
      policy,
      const DeepCollectionEquality().hash(_setToNull));

  /// Create a copy of ShippingMethodUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodUpdateImplCopyWith<_$ShippingMethodUpdateImpl>
      get copyWith =>
          __$$ShippingMethodUpdateImplCopyWithImpl<_$ShippingMethodUpdateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodUpdateImplToJson(
      this,
    );
  }
}

abstract class _ShippingMethodUpdate implements ShippingMethodUpdate {
  const factory _ShippingMethodUpdate(
          {final Map<String, dynamic>? metadata,
          final String? name,
          final String? description,
          final String? logoUrl,
          final String? ondarkLogoUrl,
          final num? price,
          final String? storeId,
          final List<List<num?>?>? rates,
          final ShippingMethodStatus? status,
          final ShippingMethodPolicy? policy,
          @JsonKey(includeFromJson: false) final List<String> setToNull}) =
      _$ShippingMethodUpdateImpl;

  factory _ShippingMethodUpdate.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodUpdateImpl.fromJson;

  @override
  Map<String, dynamic>? get metadata;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get logoUrl;
  @override
  String? get ondarkLogoUrl;
  @override
  num? get price; // String? sourceId,
  @override
  String? get storeId;
  @override
  List<List<num?>?>? get rates;
  @override
  ShippingMethodStatus? get status;
  @override
  ShippingMethodPolicy? get policy;
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull;

  /// Create a copy of ShippingMethodUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodUpdateImplCopyWith<_$ShippingMethodUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
