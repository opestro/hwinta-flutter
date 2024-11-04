// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreSummary _$StoreSummaryFromJson(Map<String, dynamic> json) {
  return _StoreSummary.fromJson(json);
}

/// @nodoc
mixin _$StoreSummary {
  StoreOrdersSummary get orders => throw _privateConstructorUsedError;

  /// Serializes this StoreSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreSummaryCopyWith<StoreSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSummaryCopyWith<$Res> {
  factory $StoreSummaryCopyWith(
          StoreSummary value, $Res Function(StoreSummary) then) =
      _$StoreSummaryCopyWithImpl<$Res, StoreSummary>;
  @useResult
  $Res call({StoreOrdersSummary orders});

  $StoreOrdersSummaryCopyWith<$Res> get orders;
}

/// @nodoc
class _$StoreSummaryCopyWithImpl<$Res, $Val extends StoreSummary>
    implements $StoreSummaryCopyWith<$Res> {
  _$StoreSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as StoreOrdersSummary,
    ) as $Val);
  }

  /// Create a copy of StoreSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreOrdersSummaryCopyWith<$Res> get orders {
    return $StoreOrdersSummaryCopyWith<$Res>(_value.orders, (value) {
      return _then(_value.copyWith(orders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreSummaryImplCopyWith<$Res>
    implements $StoreSummaryCopyWith<$Res> {
  factory _$$StoreSummaryImplCopyWith(
          _$StoreSummaryImpl value, $Res Function(_$StoreSummaryImpl) then) =
      __$$StoreSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoreOrdersSummary orders});

  @override
  $StoreOrdersSummaryCopyWith<$Res> get orders;
}

/// @nodoc
class __$$StoreSummaryImplCopyWithImpl<$Res>
    extends _$StoreSummaryCopyWithImpl<$Res, _$StoreSummaryImpl>
    implements _$$StoreSummaryImplCopyWith<$Res> {
  __$$StoreSummaryImplCopyWithImpl(
      _$StoreSummaryImpl _value, $Res Function(_$StoreSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$StoreSummaryImpl(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as StoreOrdersSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreSummaryImpl implements _StoreSummary {
  _$StoreSummaryImpl({required this.orders});

  factory _$StoreSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreSummaryImplFromJson(json);

  @override
  final StoreOrdersSummary orders;

  @override
  String toString() {
    return 'StoreSummary(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreSummaryImpl &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orders);

  /// Create a copy of StoreSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreSummaryImplCopyWith<_$StoreSummaryImpl> get copyWith =>
      __$$StoreSummaryImplCopyWithImpl<_$StoreSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreSummaryImplToJson(
      this,
    );
  }
}

abstract class _StoreSummary implements StoreSummary {
  factory _StoreSummary({required final StoreOrdersSummary orders}) =
      _$StoreSummaryImpl;

  factory _StoreSummary.fromJson(Map<String, dynamic> json) =
      _$StoreSummaryImpl.fromJson;

  @override
  StoreOrdersSummary get orders;

  /// Create a copy of StoreSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreSummaryImplCopyWith<_$StoreSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreOrdersSummary _$StoreOrdersSummaryFromJson(Map<String, dynamic> json) {
  return _StoreOrdersSummary.fromJson(json);
}

/// @nodoc
mixin _$StoreOrdersSummary {
  int get total => throw _privateConstructorUsedError;
  int get draft => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get processing => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  int get cancelled => throw _privateConstructorUsedError;

  /// Serializes this StoreOrdersSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreOrdersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreOrdersSummaryCopyWith<StoreOrdersSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreOrdersSummaryCopyWith<$Res> {
  factory $StoreOrdersSummaryCopyWith(
          StoreOrdersSummary value, $Res Function(StoreOrdersSummary) then) =
      _$StoreOrdersSummaryCopyWithImpl<$Res, StoreOrdersSummary>;
  @useResult
  $Res call(
      {int total,
      int draft,
      int pending,
      int processing,
      int completed,
      int cancelled});
}

/// @nodoc
class _$StoreOrdersSummaryCopyWithImpl<$Res, $Val extends StoreOrdersSummary>
    implements $StoreOrdersSummaryCopyWith<$Res> {
  _$StoreOrdersSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreOrdersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? draft = null,
    Object? pending = null,
    Object? processing = null,
    Object? completed = null,
    Object? cancelled = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as int,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      cancelled: null == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreOrdersSummaryImplCopyWith<$Res>
    implements $StoreOrdersSummaryCopyWith<$Res> {
  factory _$$StoreOrdersSummaryImplCopyWith(_$StoreOrdersSummaryImpl value,
          $Res Function(_$StoreOrdersSummaryImpl) then) =
      __$$StoreOrdersSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int draft,
      int pending,
      int processing,
      int completed,
      int cancelled});
}

/// @nodoc
class __$$StoreOrdersSummaryImplCopyWithImpl<$Res>
    extends _$StoreOrdersSummaryCopyWithImpl<$Res, _$StoreOrdersSummaryImpl>
    implements _$$StoreOrdersSummaryImplCopyWith<$Res> {
  __$$StoreOrdersSummaryImplCopyWithImpl(_$StoreOrdersSummaryImpl _value,
      $Res Function(_$StoreOrdersSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreOrdersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? draft = null,
    Object? pending = null,
    Object? processing = null,
    Object? completed = null,
    Object? cancelled = null,
  }) {
    return _then(_$StoreOrdersSummaryImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as int,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as int,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      cancelled: null == cancelled
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreOrdersSummaryImpl implements _StoreOrdersSummary {
  _$StoreOrdersSummaryImpl(
      {required this.total,
      required this.draft,
      required this.pending,
      required this.processing,
      required this.completed,
      required this.cancelled});

  factory _$StoreOrdersSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreOrdersSummaryImplFromJson(json);

  @override
  final int total;
  @override
  final int draft;
  @override
  final int pending;
  @override
  final int processing;
  @override
  final int completed;
  @override
  final int cancelled;

  @override
  String toString() {
    return 'StoreOrdersSummary(total: $total, draft: $draft, pending: $pending, processing: $processing, completed: $completed, cancelled: $cancelled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreOrdersSummaryImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.processing, processing) ||
                other.processing == processing) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, draft, pending, processing, completed, cancelled);

  /// Create a copy of StoreOrdersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreOrdersSummaryImplCopyWith<_$StoreOrdersSummaryImpl> get copyWith =>
      __$$StoreOrdersSummaryImplCopyWithImpl<_$StoreOrdersSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreOrdersSummaryImplToJson(
      this,
    );
  }
}

abstract class _StoreOrdersSummary implements StoreOrdersSummary {
  factory _StoreOrdersSummary(
      {required final int total,
      required final int draft,
      required final int pending,
      required final int processing,
      required final int completed,
      required final int cancelled}) = _$StoreOrdersSummaryImpl;

  factory _StoreOrdersSummary.fromJson(Map<String, dynamic> json) =
      _$StoreOrdersSummaryImpl.fromJson;

  @override
  int get total;
  @override
  int get draft;
  @override
  int get pending;
  @override
  int get processing;
  @override
  int get completed;
  @override
  int get cancelled;

  /// Create a copy of StoreOrdersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreOrdersSummaryImplCopyWith<_$StoreOrdersSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
