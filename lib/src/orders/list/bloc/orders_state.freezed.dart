// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersState _$OrdersStateFromJson(Map<String, dynamic> json) {
  return _OrdersState.fromJson(json);
}

/// @nodoc
mixin _$OrdersState {
  List<Order>? get orders => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  FetchStatus get status => throw _privateConstructorUsedError; // exception
  FeeefValidationException? get exception => throw _privateConstructorUsedError;

  /// Serializes this OrdersState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {List<Order>? orders,
      int? page,
      int? total,
      bool hasMore,
      FetchStatus status,
      FeeefValidationException? exception});

  $FeeefValidationExceptionCopyWith<$Res>? get exception;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? hasMore = null,
    Object? status = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FeeefValidationException?,
    ) as $Val);
  }

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeeefValidationExceptionCopyWith<$Res>? get exception {
    if (_value.exception == null) {
      return null;
    }

    return $FeeefValidationExceptionCopyWith<$Res>(_value.exception!, (value) {
      return _then(_value.copyWith(exception: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersStateImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$OrdersStateImplCopyWith(
          _$OrdersStateImpl value, $Res Function(_$OrdersStateImpl) then) =
      __$$OrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Order>? orders,
      int? page,
      int? total,
      bool hasMore,
      FetchStatus status,
      FeeefValidationException? exception});

  @override
  $FeeefValidationExceptionCopyWith<$Res>? get exception;
}

/// @nodoc
class __$$OrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrdersStateImpl>
    implements _$$OrdersStateImplCopyWith<$Res> {
  __$$OrdersStateImplCopyWithImpl(
      _$OrdersStateImpl _value, $Res Function(_$OrdersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? hasMore = null,
    Object? status = null,
    Object? exception = freezed,
  }) {
    return _then(_$OrdersStateImpl(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FeeefValidationException?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersStateImpl implements _OrdersState {
  const _$OrdersStateImpl(
      {final List<Order>? orders,
      this.page,
      this.total,
      this.hasMore = true,
      this.status = FetchStatus.initial,
      this.exception})
      : _orders = orders;

  factory _$OrdersStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersStateImplFromJson(json);

  final List<Order>? _orders;
  @override
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? page;
  @override
  final int? total;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final FetchStatus status;
// exception
  @override
  final FeeefValidationException? exception;

  @override
  String toString() {
    return 'OrdersState(orders: $orders, page: $page, total: $total, hasMore: $hasMore, status: $status, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      page,
      total,
      hasMore,
      status,
      exception);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      __$$OrdersStateImplCopyWithImpl<_$OrdersStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersStateImplToJson(
      this,
    );
  }
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState(
      {final List<Order>? orders,
      final int? page,
      final int? total,
      final bool hasMore,
      final FetchStatus status,
      final FeeefValidationException? exception}) = _$OrdersStateImpl;

  factory _OrdersState.fromJson(Map<String, dynamic> json) =
      _$OrdersStateImpl.fromJson;

  @override
  List<Order>? get orders;
  @override
  int? get page;
  @override
  int? get total;
  @override
  bool get hasMore;
  @override
  FetchStatus get status; // exception
  @override
  FeeefValidationException? get exception;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
