// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId) load,
    required TResult Function(String orderId, OrderUpdate order) update,
    required TResult Function(String orderId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId)? load,
    TResult? Function(String orderId, OrderUpdate order)? update,
    TResult? Function(String orderId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId)? load,
    TResult Function(String orderId, OrderUpdate order)? update,
    TResult Function(String orderId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderEventCopyWith<$Res> {
  factory $UpdateOrderEventCopyWith(
          UpdateOrderEvent value, $Res Function(UpdateOrderEvent) then) =
      _$UpdateOrderEventCopyWithImpl<$Res, UpdateOrderEvent>;
}

/// @nodoc
class _$UpdateOrderEventCopyWithImpl<$Res, $Val extends UpdateOrderEvent>
    implements $UpdateOrderEventCopyWith<$Res> {
  _$UpdateOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateOrderEvent
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
    extends _$UpdateOrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UpdateOrderEvent.started()';
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
    required TResult Function(String orderId) load,
    required TResult Function(String orderId, OrderUpdate order) update,
    required TResult Function(String orderId) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId)? load,
    TResult? Function(String orderId, OrderUpdate order)? update,
    TResult? Function(String orderId)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId)? load,
    TResult Function(String orderId, OrderUpdate order)? update,
    TResult Function(String orderId)? delete,
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
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UpdateOrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$UpdateOrderEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$LoadImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'UpdateOrderEvent.load(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId) load,
    required TResult Function(String orderId, OrderUpdate order) update,
    required TResult Function(String orderId) delete,
  }) {
    return load(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId)? load,
    TResult? Function(String orderId, OrderUpdate order)? update,
    TResult? Function(String orderId)? delete,
  }) {
    return load?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId)? load,
    TResult Function(String orderId, OrderUpdate order)? update,
    TResult Function(String orderId)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements UpdateOrderEvent {
  const factory _Load({required final String orderId}) = _$LoadImpl;

  String get orderId;

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, OrderUpdate order});

  $OrderUpdateCopyWith<$Res> get order;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$UpdateOrderEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? order = null,
  }) {
    return _then(_$UpdateImpl(
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

  /// Create a copy of UpdateOrderEvent
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

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.orderId, required this.order});

  @override
  final String orderId;
  @override
  final OrderUpdate order;

  @override
  String toString() {
    return 'UpdateOrderEvent.update(orderId: $orderId, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, order);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId) load,
    required TResult Function(String orderId, OrderUpdate order) update,
    required TResult Function(String orderId) delete,
  }) {
    return update(orderId, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId)? load,
    TResult? Function(String orderId, OrderUpdate order)? update,
    TResult? Function(String orderId)? delete,
  }) {
    return update?.call(orderId, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId)? load,
    TResult Function(String orderId, OrderUpdate order)? update,
    TResult Function(String orderId)? delete,
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
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UpdateOrderEvent {
  const factory _Update(
      {required final String orderId,
      required final OrderUpdate order}) = _$UpdateImpl;

  String get orderId;
  OrderUpdate get order;

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$UpdateOrderEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$DeleteImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'UpdateOrderEvent.delete(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId) load,
    required TResult Function(String orderId, OrderUpdate order) update,
    required TResult Function(String orderId) delete,
  }) {
    return delete(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId)? load,
    TResult? Function(String orderId, OrderUpdate order)? update,
    TResult? Function(String orderId)? delete,
  }) {
    return delete?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId)? load,
    TResult Function(String orderId, OrderUpdate order)? update,
    TResult Function(String orderId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Load value)? load,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements UpdateOrderEvent {
  const factory _Delete({required final String orderId}) = _$DeleteImpl;

  String get orderId;

  /// Create a copy of UpdateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateOrderInitial value) initial,
    required TResult Function(UpdateOrderLoading value) loading,
    required TResult Function(UpdateOrderLoaded value) loaded,
    required TResult Function(UpdateOrderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderInitial value)? initial,
    TResult? Function(UpdateOrderLoading value)? loading,
    TResult? Function(UpdateOrderLoaded value)? loaded,
    TResult? Function(UpdateOrderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderInitial value)? initial,
    TResult Function(UpdateOrderLoading value)? loading,
    TResult Function(UpdateOrderLoaded value)? loaded,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderStateCopyWith<$Res> {
  factory $UpdateOrderStateCopyWith(
          UpdateOrderState value, $Res Function(UpdateOrderState) then) =
      _$UpdateOrderStateCopyWithImpl<$Res, UpdateOrderState>;
}

/// @nodoc
class _$UpdateOrderStateCopyWithImpl<$Res, $Val extends UpdateOrderState>
    implements $UpdateOrderStateCopyWith<$Res> {
  _$UpdateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateOrderInitialImplCopyWith<$Res> {
  factory _$$UpdateOrderInitialImplCopyWith(_$UpdateOrderInitialImpl value,
          $Res Function(_$UpdateOrderInitialImpl) then) =
      __$$UpdateOrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateOrderInitialImplCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderInitialImpl>
    implements _$$UpdateOrderInitialImplCopyWith<$Res> {
  __$$UpdateOrderInitialImplCopyWithImpl(_$UpdateOrderInitialImpl _value,
      $Res Function(_$UpdateOrderInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateOrderInitialImpl implements UpdateOrderInitial {
  const _$UpdateOrderInitialImpl();

  @override
  String toString() {
    return 'UpdateOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateOrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateOrderInitial value) initial,
    required TResult Function(UpdateOrderLoading value) loading,
    required TResult Function(UpdateOrderLoaded value) loaded,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderInitial value)? initial,
    TResult? Function(UpdateOrderLoading value)? loading,
    TResult? Function(UpdateOrderLoaded value)? loaded,
    TResult? Function(UpdateOrderError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderInitial value)? initial,
    TResult Function(UpdateOrderLoading value)? loading,
    TResult Function(UpdateOrderLoaded value)? loaded,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderInitial implements UpdateOrderState {
  const factory UpdateOrderInitial() = _$UpdateOrderInitialImpl;
}

/// @nodoc
abstract class _$$UpdateOrderLoadingImplCopyWith<$Res> {
  factory _$$UpdateOrderLoadingImplCopyWith(_$UpdateOrderLoadingImpl value,
          $Res Function(_$UpdateOrderLoadingImpl) then) =
      __$$UpdateOrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateOrderLoadingImplCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderLoadingImpl>
    implements _$$UpdateOrderLoadingImplCopyWith<$Res> {
  __$$UpdateOrderLoadingImplCopyWithImpl(_$UpdateOrderLoadingImpl _value,
      $Res Function(_$UpdateOrderLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateOrderLoadingImpl implements UpdateOrderLoading {
  const _$UpdateOrderLoadingImpl();

  @override
  String toString() {
    return 'UpdateOrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateOrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateOrderInitial value) initial,
    required TResult Function(UpdateOrderLoading value) loading,
    required TResult Function(UpdateOrderLoaded value) loaded,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderInitial value)? initial,
    TResult? Function(UpdateOrderLoading value)? loading,
    TResult? Function(UpdateOrderLoaded value)? loaded,
    TResult? Function(UpdateOrderError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderInitial value)? initial,
    TResult Function(UpdateOrderLoading value)? loading,
    TResult Function(UpdateOrderLoaded value)? loaded,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderLoading implements UpdateOrderState {
  const factory UpdateOrderLoading() = _$UpdateOrderLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateOrderLoadedImplCopyWith<$Res> {
  factory _$$UpdateOrderLoadedImplCopyWith(_$UpdateOrderLoadedImpl value,
          $Res Function(_$UpdateOrderLoadedImpl) then) =
      __$$UpdateOrderLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$UpdateOrderLoadedImplCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderLoadedImpl>
    implements _$$UpdateOrderLoadedImplCopyWith<$Res> {
  __$$UpdateOrderLoadedImplCopyWithImpl(_$UpdateOrderLoadedImpl _value,
      $Res Function(_$UpdateOrderLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$UpdateOrderLoadedImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  /// Create a copy of UpdateOrderState
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

class _$UpdateOrderLoadedImpl implements UpdateOrderLoaded {
  const _$UpdateOrderLoadedImpl(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'UpdateOrderState.loaded(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderLoadedImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderLoadedImplCopyWith<_$UpdateOrderLoadedImpl> get copyWith =>
      __$$UpdateOrderLoadedImplCopyWithImpl<_$UpdateOrderLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return loaded(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return loaded?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateOrderInitial value) initial,
    required TResult Function(UpdateOrderLoading value) loading,
    required TResult Function(UpdateOrderLoaded value) loaded,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderInitial value)? initial,
    TResult? Function(UpdateOrderLoading value)? loading,
    TResult? Function(UpdateOrderLoaded value)? loaded,
    TResult? Function(UpdateOrderError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderInitial value)? initial,
    TResult Function(UpdateOrderLoading value)? loading,
    TResult Function(UpdateOrderLoaded value)? loaded,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderLoaded implements UpdateOrderState {
  const factory UpdateOrderLoaded(final Order order) = _$UpdateOrderLoadedImpl;

  Order get order;

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrderLoadedImplCopyWith<_$UpdateOrderLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderErrorImplCopyWith<$Res> {
  factory _$$UpdateOrderErrorImplCopyWith(_$UpdateOrderErrorImpl value,
          $Res Function(_$UpdateOrderErrorImpl) then) =
      __$$UpdateOrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$UpdateOrderErrorImplCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderErrorImpl>
    implements _$$UpdateOrderErrorImplCopyWith<$Res> {
  __$$UpdateOrderErrorImplCopyWithImpl(_$UpdateOrderErrorImpl _value,
      $Res Function(_$UpdateOrderErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$UpdateOrderErrorImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$UpdateOrderErrorImpl implements UpdateOrderError {
  const _$UpdateOrderErrorImpl(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'UpdateOrderState.error(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderErrorImplCopyWith<_$UpdateOrderErrorImpl> get copyWith =>
      __$$UpdateOrderErrorImplCopyWithImpl<_$UpdateOrderErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateOrderInitial value) initial,
    required TResult Function(UpdateOrderLoading value) loading,
    required TResult Function(UpdateOrderLoaded value) loaded,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderInitial value)? initial,
    TResult? Function(UpdateOrderLoading value)? loading,
    TResult? Function(UpdateOrderLoaded value)? loaded,
    TResult? Function(UpdateOrderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderInitial value)? initial,
    TResult Function(UpdateOrderLoading value)? loading,
    TResult Function(UpdateOrderLoaded value)? loaded,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderError implements UpdateOrderState {
  const factory UpdateOrderError(final Exception exception) =
      _$UpdateOrderErrorImpl;

  Exception get exception;

  /// Create a copy of UpdateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrderErrorImplCopyWith<_$UpdateOrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
