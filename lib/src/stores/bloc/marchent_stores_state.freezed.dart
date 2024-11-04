// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marchent_stores_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarchentStoresState _$MarchentStoresStateFromJson(Map<String, dynamic> json) {
  return _MarchentStoresState.fromJson(json);
}

/// @nodoc
mixin _$MarchentStoresState {
  MarchentStoresStatus get status => throw _privateConstructorUsedError;
  List<Store> get stores => throw _privateConstructorUsedError;
  Store? get store => throw _privateConstructorUsedError;
  StoreSummary? get summary =>
      throw _privateConstructorUsedError; // shipping methods
  List<ShippingMethod>? get shippingMethods =>
      throw _privateConstructorUsedError;
  FeeefValidationException? get error => throw _privateConstructorUsedError;

  /// Serializes this MarchentStoresState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarchentStoresStateCopyWith<MarchentStoresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarchentStoresStateCopyWith<$Res> {
  factory $MarchentStoresStateCopyWith(
          MarchentStoresState value, $Res Function(MarchentStoresState) then) =
      _$MarchentStoresStateCopyWithImpl<$Res, MarchentStoresState>;
  @useResult
  $Res call(
      {MarchentStoresStatus status,
      List<Store> stores,
      Store? store,
      StoreSummary? summary,
      List<ShippingMethod>? shippingMethods,
      FeeefValidationException? error});

  $StoreCopyWith<$Res>? get store;
  $StoreSummaryCopyWith<$Res>? get summary;
  $FeeefValidationExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$MarchentStoresStateCopyWithImpl<$Res, $Val extends MarchentStoresState>
    implements $MarchentStoresStateCopyWith<$Res> {
  _$MarchentStoresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stores = null,
    Object? store = freezed,
    Object? summary = freezed,
    Object? shippingMethods = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MarchentStoresStatus,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as StoreSummary?,
      shippingMethods: freezed == shippingMethods
          ? _value.shippingMethods
          : shippingMethods // ignore: cast_nullable_to_non_nullable
              as List<ShippingMethod>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FeeefValidationException?,
    ) as $Val);
  }

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value) as $Val);
    });
  }

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $StoreSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeeefValidationExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FeeefValidationExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarchentStoresStateImplCopyWith<$Res>
    implements $MarchentStoresStateCopyWith<$Res> {
  factory _$$MarchentStoresStateImplCopyWith(_$MarchentStoresStateImpl value,
          $Res Function(_$MarchentStoresStateImpl) then) =
      __$$MarchentStoresStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MarchentStoresStatus status,
      List<Store> stores,
      Store? store,
      StoreSummary? summary,
      List<ShippingMethod>? shippingMethods,
      FeeefValidationException? error});

  @override
  $StoreCopyWith<$Res>? get store;
  @override
  $StoreSummaryCopyWith<$Res>? get summary;
  @override
  $FeeefValidationExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$MarchentStoresStateImplCopyWithImpl<$Res>
    extends _$MarchentStoresStateCopyWithImpl<$Res, _$MarchentStoresStateImpl>
    implements _$$MarchentStoresStateImplCopyWith<$Res> {
  __$$MarchentStoresStateImplCopyWithImpl(_$MarchentStoresStateImpl _value,
      $Res Function(_$MarchentStoresStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stores = null,
    Object? store = freezed,
    Object? summary = freezed,
    Object? shippingMethods = freezed,
    Object? error = freezed,
  }) {
    return _then(_$MarchentStoresStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MarchentStoresStatus,
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as StoreSummary?,
      shippingMethods: freezed == shippingMethods
          ? _value._shippingMethods
          : shippingMethods // ignore: cast_nullable_to_non_nullable
              as List<ShippingMethod>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FeeefValidationException?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarchentStoresStateImpl implements _MarchentStoresState {
  const _$MarchentStoresStateImpl(
      {this.status = MarchentStoresStatus.initial,
      final List<Store> stores = const [],
      this.store,
      this.summary,
      final List<ShippingMethod>? shippingMethods,
      this.error})
      : _stores = stores,
        _shippingMethods = shippingMethods;

  factory _$MarchentStoresStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarchentStoresStateImplFromJson(json);

  @override
  @JsonKey()
  final MarchentStoresStatus status;
  final List<Store> _stores;
  @override
  @JsonKey()
  List<Store> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  final Store? store;
  @override
  final StoreSummary? summary;
// shipping methods
  final List<ShippingMethod>? _shippingMethods;
// shipping methods
  @override
  List<ShippingMethod>? get shippingMethods {
    final value = _shippingMethods;
    if (value == null) return null;
    if (_shippingMethods is EqualUnmodifiableListView) return _shippingMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FeeefValidationException? error;

  @override
  String toString() {
    return 'MarchentStoresState(status: $status, stores: $stores, store: $store, summary: $summary, shippingMethods: $shippingMethods, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarchentStoresStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._stores, _stores) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._shippingMethods, _shippingMethods) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_stores),
      store,
      summary,
      const DeepCollectionEquality().hash(_shippingMethods),
      error);

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarchentStoresStateImplCopyWith<_$MarchentStoresStateImpl> get copyWith =>
      __$$MarchentStoresStateImplCopyWithImpl<_$MarchentStoresStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarchentStoresStateImplToJson(
      this,
    );
  }
}

abstract class _MarchentStoresState implements MarchentStoresState {
  const factory _MarchentStoresState(
      {final MarchentStoresStatus status,
      final List<Store> stores,
      final Store? store,
      final StoreSummary? summary,
      final List<ShippingMethod>? shippingMethods,
      final FeeefValidationException? error}) = _$MarchentStoresStateImpl;

  factory _MarchentStoresState.fromJson(Map<String, dynamic> json) =
      _$MarchentStoresStateImpl.fromJson;

  @override
  MarchentStoresStatus get status;
  @override
  List<Store> get stores;
  @override
  Store? get store;
  @override
  StoreSummary? get summary; // shipping methods
  @override
  List<ShippingMethod>? get shippingMethods;
  @override
  FeeefValidationException? get error;

  /// Create a copy of MarchentStoresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarchentStoresStateImplCopyWith<_$MarchentStoresStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
