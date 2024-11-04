// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)
        load,
    required TResult Function(Order order) add,
    required TResult Function(String orderId, OrderUpdate order) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult? Function(Order order)? add,
    TResult? Function(String orderId, OrderUpdate order)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult Function(Order order)? add,
    TResult Function(String orderId, OrderUpdate order)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrdersByStoreId value) load,
    required TResult Function(_AddOrder value) add,
    required TResult Function(_UpdateOrder value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrdersByStoreId value)? load,
    TResult? Function(_AddOrder value)? add,
    TResult? Function(_UpdateOrder value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrdersByStoreId value)? load,
    TResult Function(_AddOrder value)? add,
    TResult Function(_UpdateOrder value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrdersEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)
        load,
    required TResult Function(Order order) add,
    required TResult Function(String orderId, OrderUpdate order) update,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult? Function(Order order)? add,
    TResult? Function(String orderId, OrderUpdate order)? update,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult Function(Order order)? add,
    TResult Function(String orderId, OrderUpdate order)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrdersByStoreId value) load,
    required TResult Function(_AddOrder value) add,
    required TResult Function(_UpdateOrder value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrdersByStoreId value)? load,
    TResult? Function(_AddOrder value)? add,
    TResult? Function(_UpdateOrder value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrdersByStoreId value)? load,
    TResult Function(_AddOrder value)? add,
    TResult Function(_UpdateOrder value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrdersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOrdersByStoreIdImplCopyWith<$Res> {
  factory _$$GetOrdersByStoreIdImplCopyWith(_$GetOrdersByStoreIdImpl value,
          $Res Function(_$GetOrdersByStoreIdImpl) then) =
      __$$GetOrdersByStoreIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String storeId, int? page, int? limit, DateTime? createdAfter});
}

/// @nodoc
class __$$GetOrdersByStoreIdImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrdersByStoreIdImpl>
    implements _$$GetOrdersByStoreIdImplCopyWith<$Res> {
  __$$GetOrdersByStoreIdImplCopyWithImpl(_$GetOrdersByStoreIdImpl _value,
      $Res Function(_$GetOrdersByStoreIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
    Object? page = freezed,
    Object? limit = freezed,
    Object? createdAfter = freezed,
  }) {
    return _then(_$GetOrdersByStoreIdImpl(
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$GetOrdersByStoreIdImpl implements _GetOrdersByStoreId {
  const _$GetOrdersByStoreIdImpl(
      {required this.storeId, this.page, this.limit, this.createdAfter});

  @override
  final String storeId;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final DateTime? createdAfter;

  @override
  String toString() {
    return 'OrdersEvent.load(storeId: $storeId, page: $page, limit: $limit, createdAfter: $createdAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersByStoreIdImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, storeId, page, limit, createdAfter);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersByStoreIdImplCopyWith<_$GetOrdersByStoreIdImpl> get copyWith =>
      __$$GetOrdersByStoreIdImplCopyWithImpl<_$GetOrdersByStoreIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)
        load,
    required TResult Function(Order order) add,
    required TResult Function(String orderId, OrderUpdate order) update,
  }) {
    return load(storeId, page, limit, createdAfter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult? Function(Order order)? add,
    TResult? Function(String orderId, OrderUpdate order)? update,
  }) {
    return load?.call(storeId, page, limit, createdAfter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult Function(Order order)? add,
    TResult Function(String orderId, OrderUpdate order)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(storeId, page, limit, createdAfter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrdersByStoreId value) load,
    required TResult Function(_AddOrder value) add,
    required TResult Function(_UpdateOrder value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrdersByStoreId value)? load,
    TResult? Function(_AddOrder value)? add,
    TResult? Function(_UpdateOrder value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrdersByStoreId value)? load,
    TResult Function(_AddOrder value)? add,
    TResult Function(_UpdateOrder value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _GetOrdersByStoreId implements OrdersEvent {
  const factory _GetOrdersByStoreId(
      {required final String storeId,
      final int? page,
      final int? limit,
      final DateTime? createdAfter}) = _$GetOrdersByStoreIdImpl;

  String get storeId;
  int? get page;
  int? get limit;
  DateTime? get createdAfter;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrdersByStoreIdImplCopyWith<_$GetOrdersByStoreIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrderImplCopyWith<$Res> {
  factory _$$AddOrderImplCopyWith(
          _$AddOrderImpl value, $Res Function(_$AddOrderImpl) then) =
      __$$AddOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$AddOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AddOrderImpl>
    implements _$$AddOrderImplCopyWith<$Res> {
  __$$AddOrderImplCopyWithImpl(
      _$AddOrderImpl _value, $Res Function(_$AddOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$AddOrderImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$AddOrderImpl implements _AddOrder {
  const _$AddOrderImpl({required this.order});

  @override
  final Order order;

  @override
  String toString() {
    return 'OrdersEvent.add(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      __$$AddOrderImplCopyWithImpl<_$AddOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)
        load,
    required TResult Function(Order order) add,
    required TResult Function(String orderId, OrderUpdate order) update,
  }) {
    return add(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult? Function(Order order)? add,
    TResult? Function(String orderId, OrderUpdate order)? update,
  }) {
    return add?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult Function(Order order)? add,
    TResult Function(String orderId, OrderUpdate order)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrdersByStoreId value) load,
    required TResult Function(_AddOrder value) add,
    required TResult Function(_UpdateOrder value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrdersByStoreId value)? load,
    TResult? Function(_AddOrder value)? add,
    TResult? Function(_UpdateOrder value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrdersByStoreId value)? load,
    TResult Function(_AddOrder value)? add,
    TResult Function(_UpdateOrder value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddOrder implements OrdersEvent {
  const factory _AddOrder({required final Order order}) = _$AddOrderImpl;

  Order get order;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderImplCopyWith<$Res> {
  factory _$$UpdateOrderImplCopyWith(
          _$UpdateOrderImpl value, $Res Function(_$UpdateOrderImpl) then) =
      __$$UpdateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, OrderUpdate order});

  $OrderUpdateCopyWith<$Res> get order;
}

/// @nodoc
class __$$UpdateOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$UpdateOrderImpl>
    implements _$$UpdateOrderImplCopyWith<$Res> {
  __$$UpdateOrderImplCopyWithImpl(
      _$UpdateOrderImpl _value, $Res Function(_$UpdateOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? order = null,
  }) {
    return _then(_$UpdateOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderUpdate,
    ));
  }

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderUpdateCopyWith<$Res> get order {
    return $OrderUpdateCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$UpdateOrderImpl implements _UpdateOrder {
  const _$UpdateOrderImpl({required this.orderId, required this.order});

  @override
  final String orderId;
  @override
  final OrderUpdate order;

  @override
  String toString() {
    return 'OrdersEvent.update(orderId: $orderId, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, order);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderImplCopyWith<_$UpdateOrderImpl> get copyWith =>
      __$$UpdateOrderImplCopyWithImpl<_$UpdateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)
        load,
    required TResult Function(Order order) add,
    required TResult Function(String orderId, OrderUpdate order) update,
  }) {
    return update(orderId, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult? Function(Order order)? add,
    TResult? Function(String orderId, OrderUpdate order)? update,
  }) {
    return update?.call(orderId, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String storeId, int? page, int? limit, DateTime? createdAfter)?
        load,
    TResult Function(Order order)? add,
    TResult Function(String orderId, OrderUpdate order)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(orderId, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOrdersByStoreId value) load,
    required TResult Function(_AddOrder value) add,
    required TResult Function(_UpdateOrder value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOrdersByStoreId value)? load,
    TResult? Function(_AddOrder value)? add,
    TResult? Function(_UpdateOrder value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOrdersByStoreId value)? load,
    TResult Function(_AddOrder value)? add,
    TResult Function(_UpdateOrder value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrder implements OrdersEvent {
  const factory _UpdateOrder(
      {required final String orderId,
      required final OrderUpdate order}) = _$UpdateOrderImpl;

  String get orderId;
  OrderUpdate get order;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrderImplCopyWith<_$UpdateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
