// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String? get customerNote => throw _privateConstructorUsedError;
  String? get customerIp => throw _privateConstructorUsedError;
  String? get shippingAddress => throw _privateConstructorUsedError;
  String? get shippingCity => throw _privateConstructorUsedError;
  String? get shippingState => throw _privateConstructorUsedError;
  String? get shippingMethodId => throw _privateConstructorUsedError;
  String? get paymentMethodId => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  num get subtotal => throw _privateConstructorUsedError;
  num? get shippingPrice => throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;
  num get calculatedTotal => throw _privateConstructorUsedError;
  num? get manualTotal => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  String? get coupon => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  DeliveryStatus get deliveryStatus => throw _privateConstructorUsedError;
  Store? get store => throw _privateConstructorUsedError;
  ShippingMethod? get shippingMethod => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic> metadata,
      String? customerName,
      String customerPhone,
      String? customerNote,
      String? customerIp,
      String? shippingAddress,
      String? shippingCity,
      String? shippingState,
      String? shippingMethodId,
      String? paymentMethodId,
      List<OrderItem> items,
      num subtotal,
      num? shippingPrice,
      num total,
      num calculatedTotal,
      num? manualTotal,
      num discount,
      String? coupon,
      String storeId,
      OrderStatus status,
      PaymentStatus paymentStatus,
      DeliveryStatus deliveryStatus,
      Store? store,
      ShippingMethod? shippingMethod});

  $StoreCopyWith<$Res>? get store;
  $ShippingMethodCopyWith<$Res>? get shippingMethod;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = null,
    Object? customerName = freezed,
    Object? customerPhone = null,
    Object? customerNote = freezed,
    Object? customerIp = freezed,
    Object? shippingAddress = freezed,
    Object? shippingCity = freezed,
    Object? shippingState = freezed,
    Object? shippingMethodId = freezed,
    Object? paymentMethodId = freezed,
    Object? items = null,
    Object? subtotal = null,
    Object? shippingPrice = freezed,
    Object? total = null,
    Object? calculatedTotal = null,
    Object? manualTotal = freezed,
    Object? discount = null,
    Object? coupon = freezed,
    Object? storeId = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? deliveryStatus = null,
    Object? store = freezed,
    Object? shippingMethod = freezed,
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
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: freezed == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCity: freezed == shippingCity
          ? _value.shippingCity
          : shippingCity // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingState: freezed == shippingState
          ? _value.shippingState
          : shippingState // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num,
      shippingPrice: freezed == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      calculatedTotal: null == calculatedTotal
          ? _value.calculatedTotal
          : calculatedTotal // ignore: cast_nullable_to_non_nullable
              as num,
      manualTotal: freezed == manualTotal
          ? _value.manualTotal
          : manualTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      shippingMethod: freezed == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as ShippingMethod?,
    ) as $Val);
  }

  /// Create a copy of Order
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

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingMethodCopyWith<$Res>? get shippingMethod {
    if (_value.shippingMethod == null) {
      return null;
    }

    return $ShippingMethodCopyWith<$Res>(_value.shippingMethod!, (value) {
      return _then(_value.copyWith(shippingMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic> metadata,
      String? customerName,
      String customerPhone,
      String? customerNote,
      String? customerIp,
      String? shippingAddress,
      String? shippingCity,
      String? shippingState,
      String? shippingMethodId,
      String? paymentMethodId,
      List<OrderItem> items,
      num subtotal,
      num? shippingPrice,
      num total,
      num calculatedTotal,
      num? manualTotal,
      num discount,
      String? coupon,
      String storeId,
      OrderStatus status,
      PaymentStatus paymentStatus,
      DeliveryStatus deliveryStatus,
      Store? store,
      ShippingMethod? shippingMethod});

  @override
  $StoreCopyWith<$Res>? get store;
  @override
  $ShippingMethodCopyWith<$Res>? get shippingMethod;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = null,
    Object? customerName = freezed,
    Object? customerPhone = null,
    Object? customerNote = freezed,
    Object? customerIp = freezed,
    Object? shippingAddress = freezed,
    Object? shippingCity = freezed,
    Object? shippingState = freezed,
    Object? shippingMethodId = freezed,
    Object? paymentMethodId = freezed,
    Object? items = null,
    Object? subtotal = null,
    Object? shippingPrice = freezed,
    Object? total = null,
    Object? calculatedTotal = null,
    Object? manualTotal = freezed,
    Object? discount = null,
    Object? coupon = freezed,
    Object? storeId = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? deliveryStatus = null,
    Object? store = freezed,
    Object? shippingMethod = freezed,
  }) {
    return _then(_$OrderImpl(
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
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: freezed == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCity: freezed == shippingCity
          ? _value.shippingCity
          : shippingCity // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingState: freezed == shippingState
          ? _value.shippingState
          : shippingState // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num,
      shippingPrice: freezed == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      calculatedTotal: null == calculatedTotal
          ? _value.calculatedTotal
          : calculatedTotal // ignore: cast_nullable_to_non_nullable
              as num,
      manualTotal: freezed == manualTotal
          ? _value.manualTotal
          : manualTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      shippingMethod: freezed == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as ShippingMethod?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      final Map<String, dynamic> metadata = const {},
      this.customerName,
      required this.customerPhone,
      this.customerNote,
      this.customerIp,
      this.shippingAddress,
      this.shippingCity,
      this.shippingState,
      this.shippingMethodId,
      this.paymentMethodId,
      required final List<OrderItem> items,
      required this.subtotal,
      this.shippingPrice,
      required this.total,
      required this.calculatedTotal,
      this.manualTotal,
      required this.discount,
      this.coupon,
      required this.storeId,
      required this.status,
      this.paymentStatus = PaymentStatus.unpaid,
      this.deliveryStatus = DeliveryStatus.pending,
      this.store,
      this.shippingMethod})
      : _metadata = metadata,
        _items = items;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

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
  final String? customerName;
  @override
  final String customerPhone;
  @override
  final String? customerNote;
  @override
  final String? customerIp;
  @override
  final String? shippingAddress;
  @override
  final String? shippingCity;
  @override
  final String? shippingState;
  @override
  final String? shippingMethodId;
  @override
  final String? paymentMethodId;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final num subtotal;
  @override
  final num? shippingPrice;
  @override
  final num total;
  @override
  final num calculatedTotal;
  @override
  final num? manualTotal;
  @override
  final num discount;
  @override
  final String? coupon;
  @override
  final String storeId;
  @override
  final OrderStatus status;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final DeliveryStatus deliveryStatus;
  @override
  final Store? store;
  @override
  final ShippingMethod? shippingMethod;

  @override
  String toString() {
    return 'Order(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata, customerName: $customerName, customerPhone: $customerPhone, customerNote: $customerNote, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingMethodId: $shippingMethodId, paymentMethodId: $paymentMethodId, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, calculatedTotal: $calculatedTotal, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, store: $store, shippingMethod: $shippingMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.customerIp, customerIp) ||
                other.customerIp == customerIp) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.shippingCity, shippingCity) ||
                other.shippingCity == shippingCity) &&
            (identical(other.shippingState, shippingState) ||
                other.shippingState == shippingState) &&
            (identical(other.shippingMethodId, shippingMethodId) ||
                other.shippingMethodId == shippingMethodId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shippingPrice, shippingPrice) ||
                other.shippingPrice == shippingPrice) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.calculatedTotal, calculatedTotal) ||
                other.calculatedTotal == calculatedTotal) &&
            (identical(other.manualTotal, manualTotal) ||
                other.manualTotal == manualTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.shippingMethod, shippingMethod) ||
                other.shippingMethod == shippingMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_metadata),
        customerName,
        customerPhone,
        customerNote,
        customerIp,
        shippingAddress,
        shippingCity,
        shippingState,
        shippingMethodId,
        paymentMethodId,
        const DeepCollectionEquality().hash(_items),
        subtotal,
        shippingPrice,
        total,
        calculatedTotal,
        manualTotal,
        discount,
        coupon,
        storeId,
        status,
        paymentStatus,
        deliveryStatus,
        store,
        shippingMethod
      ]);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final Map<String, dynamic> metadata,
      final String? customerName,
      required final String customerPhone,
      final String? customerNote,
      final String? customerIp,
      final String? shippingAddress,
      final String? shippingCity,
      final String? shippingState,
      final String? shippingMethodId,
      final String? paymentMethodId,
      required final List<OrderItem> items,
      required final num subtotal,
      final num? shippingPrice,
      required final num total,
      required final num calculatedTotal,
      final num? manualTotal,
      required final num discount,
      final String? coupon,
      required final String storeId,
      required final OrderStatus status,
      final PaymentStatus paymentStatus,
      final DeliveryStatus deliveryStatus,
      final Store? store,
      final ShippingMethod? shippingMethod}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Map<String, dynamic> get metadata;
  @override
  String? get customerName;
  @override
  String get customerPhone;
  @override
  String? get customerNote;
  @override
  String? get customerIp;
  @override
  String? get shippingAddress;
  @override
  String? get shippingCity;
  @override
  String? get shippingState;
  @override
  String? get shippingMethodId;
  @override
  String? get paymentMethodId;
  @override
  List<OrderItem> get items;
  @override
  num get subtotal;
  @override
  num? get shippingPrice;
  @override
  num get total;
  @override
  num get calculatedTotal;
  @override
  num? get manualTotal;
  @override
  num get discount;
  @override
  String? get coupon;
  @override
  String get storeId;
  @override
  OrderStatus get status;
  @override
  PaymentStatus get paymentStatus;
  @override
  DeliveryStatus get deliveryStatus;
  @override
  Store? get store;
  @override
  ShippingMethod? get shippingMethod;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderCreate _$OrderCreateFromJson(Map<String, dynamic> json) {
  return _OrderCreate.fromJson(json);
}

/// @nodoc
mixin _$OrderCreate {
  String? get id => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get shippingNote => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String? get customerIp => throw _privateConstructorUsedError;
  String? get shippingAddress => throw _privateConstructorUsedError;
  String? get shippingCity => throw _privateConstructorUsedError;
  String? get shippingState => throw _privateConstructorUsedError;
  String? get shippingMethodId => throw _privateConstructorUsedError;
  String? get paymentMethodId => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  num? get subtotal => throw _privateConstructorUsedError;
  num? get shippingPrice => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  num? get manualTotal => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  String? get coupon => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  PaymentStatus? get paymentStatus => throw _privateConstructorUsedError;
  DeliveryStatus? get deliveryStatus =>
      throw _privateConstructorUsedError; // metadata
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this OrderCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCreateCopyWith<OrderCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreateCopyWith<$Res> {
  factory $OrderCreateCopyWith(
          OrderCreate value, $Res Function(OrderCreate) then) =
      _$OrderCreateCopyWithImpl<$Res, OrderCreate>;
  @useResult
  $Res call(
      {String? id,
      String? customerName,
      String? shippingNote,
      String customerPhone,
      String? customerIp,
      String? shippingAddress,
      String? shippingCity,
      String? shippingState,
      String? shippingMethodId,
      String? paymentMethodId,
      List<OrderItem> items,
      num? subtotal,
      num? shippingPrice,
      num? total,
      num? manualTotal,
      num? discount,
      String? coupon,
      String storeId,
      OrderStatus? status,
      PaymentStatus? paymentStatus,
      DeliveryStatus? deliveryStatus,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$OrderCreateCopyWithImpl<$Res, $Val extends OrderCreate>
    implements $OrderCreateCopyWith<$Res> {
  _$OrderCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? shippingNote = freezed,
    Object? customerPhone = null,
    Object? customerIp = freezed,
    Object? shippingAddress = freezed,
    Object? shippingCity = freezed,
    Object? shippingState = freezed,
    Object? shippingMethodId = freezed,
    Object? paymentMethodId = freezed,
    Object? items = null,
    Object? subtotal = freezed,
    Object? shippingPrice = freezed,
    Object? total = freezed,
    Object? manualTotal = freezed,
    Object? discount = freezed,
    Object? coupon = freezed,
    Object? storeId = null,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryStatus = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingNote: freezed == shippingNote
          ? _value.shippingNote
          : shippingNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCity: freezed == shippingCity
          ? _value.shippingCity
          : shippingCity // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingState: freezed == shippingState
          ? _value.shippingState
          : shippingState // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
      shippingPrice: freezed == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      manualTotal: freezed == manualTotal
          ? _value.manualTotal
          : manualTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCreateImplCopyWith<$Res>
    implements $OrderCreateCopyWith<$Res> {
  factory _$$OrderCreateImplCopyWith(
          _$OrderCreateImpl value, $Res Function(_$OrderCreateImpl) then) =
      __$$OrderCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? customerName,
      String? shippingNote,
      String customerPhone,
      String? customerIp,
      String? shippingAddress,
      String? shippingCity,
      String? shippingState,
      String? shippingMethodId,
      String? paymentMethodId,
      List<OrderItem> items,
      num? subtotal,
      num? shippingPrice,
      num? total,
      num? manualTotal,
      num? discount,
      String? coupon,
      String storeId,
      OrderStatus? status,
      PaymentStatus? paymentStatus,
      DeliveryStatus? deliveryStatus,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$OrderCreateImplCopyWithImpl<$Res>
    extends _$OrderCreateCopyWithImpl<$Res, _$OrderCreateImpl>
    implements _$$OrderCreateImplCopyWith<$Res> {
  __$$OrderCreateImplCopyWithImpl(
      _$OrderCreateImpl _value, $Res Function(_$OrderCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? shippingNote = freezed,
    Object? customerPhone = null,
    Object? customerIp = freezed,
    Object? shippingAddress = freezed,
    Object? shippingCity = freezed,
    Object? shippingState = freezed,
    Object? shippingMethodId = freezed,
    Object? paymentMethodId = freezed,
    Object? items = null,
    Object? subtotal = freezed,
    Object? shippingPrice = freezed,
    Object? total = freezed,
    Object? manualTotal = freezed,
    Object? discount = freezed,
    Object? coupon = freezed,
    Object? storeId = null,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryStatus = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$OrderCreateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingNote: freezed == shippingNote
          ? _value.shippingNote
          : shippingNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCity: freezed == shippingCity
          ? _value.shippingCity
          : shippingCity // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingState: freezed == shippingState
          ? _value.shippingState
          : shippingState // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
      shippingPrice: freezed == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      manualTotal: freezed == manualTotal
          ? _value.manualTotal
          : manualTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCreateImpl implements _OrderCreate {
  const _$OrderCreateImpl(
      {this.id,
      this.customerName,
      this.shippingNote,
      required this.customerPhone,
      this.customerIp,
      this.shippingAddress,
      this.shippingCity,
      this.shippingState,
      this.shippingMethodId,
      this.paymentMethodId,
      required final List<OrderItem> items,
      this.subtotal,
      this.shippingPrice,
      this.total,
      this.manualTotal,
      this.discount,
      this.coupon,
      required this.storeId,
      this.status,
      this.paymentStatus,
      this.deliveryStatus,
      final Map<String, dynamic>? metadata})
      : _items = items,
        _metadata = metadata;

  factory _$OrderCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreateImplFromJson(json);

  @override
  final String? id;
  @override
  final String? customerName;
  @override
  final String? shippingNote;
  @override
  final String customerPhone;
  @override
  final String? customerIp;
  @override
  final String? shippingAddress;
  @override
  final String? shippingCity;
  @override
  final String? shippingState;
  @override
  final String? shippingMethodId;
  @override
  final String? paymentMethodId;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final num? subtotal;
  @override
  final num? shippingPrice;
  @override
  final num? total;
  @override
  final num? manualTotal;
  @override
  final num? discount;
  @override
  final String? coupon;
  @override
  final String storeId;
  @override
  final OrderStatus? status;
  @override
  final PaymentStatus? paymentStatus;
  @override
  final DeliveryStatus? deliveryStatus;
// metadata
  final Map<String, dynamic>? _metadata;
// metadata
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OrderCreate(id: $id, customerName: $customerName, shippingNote: $shippingNote, customerPhone: $customerPhone, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingMethodId: $shippingMethodId, paymentMethodId: $paymentMethodId, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.shippingNote, shippingNote) ||
                other.shippingNote == shippingNote) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.customerIp, customerIp) ||
                other.customerIp == customerIp) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.shippingCity, shippingCity) ||
                other.shippingCity == shippingCity) &&
            (identical(other.shippingState, shippingState) ||
                other.shippingState == shippingState) &&
            (identical(other.shippingMethodId, shippingMethodId) ||
                other.shippingMethodId == shippingMethodId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shippingPrice, shippingPrice) ||
                other.shippingPrice == shippingPrice) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.manualTotal, manualTotal) ||
                other.manualTotal == manualTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customerName,
        shippingNote,
        customerPhone,
        customerIp,
        shippingAddress,
        shippingCity,
        shippingState,
        shippingMethodId,
        paymentMethodId,
        const DeepCollectionEquality().hash(_items),
        subtotal,
        shippingPrice,
        total,
        manualTotal,
        discount,
        coupon,
        storeId,
        status,
        paymentStatus,
        deliveryStatus,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  /// Create a copy of OrderCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateImplCopyWith<_$OrderCreateImpl> get copyWith =>
      __$$OrderCreateImplCopyWithImpl<_$OrderCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreateImplToJson(
      this,
    );
  }
}

abstract class _OrderCreate implements OrderCreate {
  const factory _OrderCreate(
      {final String? id,
      final String? customerName,
      final String? shippingNote,
      required final String customerPhone,
      final String? customerIp,
      final String? shippingAddress,
      final String? shippingCity,
      final String? shippingState,
      final String? shippingMethodId,
      final String? paymentMethodId,
      required final List<OrderItem> items,
      final num? subtotal,
      final num? shippingPrice,
      final num? total,
      final num? manualTotal,
      final num? discount,
      final String? coupon,
      required final String storeId,
      final OrderStatus? status,
      final PaymentStatus? paymentStatus,
      final DeliveryStatus? deliveryStatus,
      final Map<String, dynamic>? metadata}) = _$OrderCreateImpl;

  factory _OrderCreate.fromJson(Map<String, dynamic> json) =
      _$OrderCreateImpl.fromJson;

  @override
  String? get id;
  @override
  String? get customerName;
  @override
  String? get shippingNote;
  @override
  String get customerPhone;
  @override
  String? get customerIp;
  @override
  String? get shippingAddress;
  @override
  String? get shippingCity;
  @override
  String? get shippingState;
  @override
  String? get shippingMethodId;
  @override
  String? get paymentMethodId;
  @override
  List<OrderItem> get items;
  @override
  num? get subtotal;
  @override
  num? get shippingPrice;
  @override
  num? get total;
  @override
  num? get manualTotal;
  @override
  num? get discount;
  @override
  String? get coupon;
  @override
  String get storeId;
  @override
  OrderStatus? get status;
  @override
  PaymentStatus? get paymentStatus;
  @override
  DeliveryStatus? get deliveryStatus; // metadata
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of OrderCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCreateImplCopyWith<_$OrderCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderUpdate _$OrderUpdateFromJson(Map<String, dynamic> json) {
  return _OrderUpdate.fromJson(json);
}

/// @nodoc
mixin _$OrderUpdate {
  String? get customerName => throw _privateConstructorUsedError;
  String? get shippingNote => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  String? get customerIp => throw _privateConstructorUsedError;
  String? get shippingAddress => throw _privateConstructorUsedError;
  String? get shippingCity => throw _privateConstructorUsedError;
  String? get shippingState => throw _privateConstructorUsedError;
  String? get shippingMethodId => throw _privateConstructorUsedError;
  String? get paymentMethodId => throw _privateConstructorUsedError;
  List<OrderItem>? get items => throw _privateConstructorUsedError;
  num? get subtotal => throw _privateConstructorUsedError;
  num? get shippingPrice => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  num? get manualTotal => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  String? get coupon => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;
  PaymentStatus? get paymentStatus => throw _privateConstructorUsedError;
  DeliveryStatus? get deliveryStatus =>
      throw _privateConstructorUsedError; // metadata
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  List<String> get setToNull => throw _privateConstructorUsedError;

  /// Serializes this OrderUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderUpdateCopyWith<OrderUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderUpdateCopyWith<$Res> {
  factory $OrderUpdateCopyWith(
          OrderUpdate value, $Res Function(OrderUpdate) then) =
      _$OrderUpdateCopyWithImpl<$Res, OrderUpdate>;
  @useResult
  $Res call(
      {String? customerName,
      String? shippingNote,
      String? customerPhone,
      String? customerIp,
      String? shippingAddress,
      String? shippingCity,
      String? shippingState,
      String? shippingMethodId,
      String? paymentMethodId,
      List<OrderItem>? items,
      num? subtotal,
      num? shippingPrice,
      num? total,
      num? manualTotal,
      num? discount,
      String? coupon,
      String storeId,
      OrderStatus? status,
      PaymentStatus? paymentStatus,
      DeliveryStatus? deliveryStatus,
      Map<String, dynamic>? metadata,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class _$OrderUpdateCopyWithImpl<$Res, $Val extends OrderUpdate>
    implements $OrderUpdateCopyWith<$Res> {
  _$OrderUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? shippingNote = freezed,
    Object? customerPhone = freezed,
    Object? customerIp = freezed,
    Object? shippingAddress = freezed,
    Object? shippingCity = freezed,
    Object? shippingState = freezed,
    Object? shippingMethodId = freezed,
    Object? paymentMethodId = freezed,
    Object? items = freezed,
    Object? subtotal = freezed,
    Object? shippingPrice = freezed,
    Object? total = freezed,
    Object? manualTotal = freezed,
    Object? discount = freezed,
    Object? coupon = freezed,
    Object? storeId = null,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryStatus = freezed,
    Object? metadata = freezed,
    Object? setToNull = null,
  }) {
    return _then(_value.copyWith(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingNote: freezed == shippingNote
          ? _value.shippingNote
          : shippingNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCity: freezed == shippingCity
          ? _value.shippingCity
          : shippingCity // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingState: freezed == shippingState
          ? _value.shippingState
          : shippingState // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
      shippingPrice: freezed == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      manualTotal: freezed == manualTotal
          ? _value.manualTotal
          : manualTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      setToNull: null == setToNull
          ? _value.setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderUpdateImplCopyWith<$Res>
    implements $OrderUpdateCopyWith<$Res> {
  factory _$$OrderUpdateImplCopyWith(
          _$OrderUpdateImpl value, $Res Function(_$OrderUpdateImpl) then) =
      __$$OrderUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? customerName,
      String? shippingNote,
      String? customerPhone,
      String? customerIp,
      String? shippingAddress,
      String? shippingCity,
      String? shippingState,
      String? shippingMethodId,
      String? paymentMethodId,
      List<OrderItem>? items,
      num? subtotal,
      num? shippingPrice,
      num? total,
      num? manualTotal,
      num? discount,
      String? coupon,
      String storeId,
      OrderStatus? status,
      PaymentStatus? paymentStatus,
      DeliveryStatus? deliveryStatus,
      Map<String, dynamic>? metadata,
      @JsonKey(includeFromJson: false) List<String> setToNull});
}

/// @nodoc
class __$$OrderUpdateImplCopyWithImpl<$Res>
    extends _$OrderUpdateCopyWithImpl<$Res, _$OrderUpdateImpl>
    implements _$$OrderUpdateImplCopyWith<$Res> {
  __$$OrderUpdateImplCopyWithImpl(
      _$OrderUpdateImpl _value, $Res Function(_$OrderUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? shippingNote = freezed,
    Object? customerPhone = freezed,
    Object? customerIp = freezed,
    Object? shippingAddress = freezed,
    Object? shippingCity = freezed,
    Object? shippingState = freezed,
    Object? shippingMethodId = freezed,
    Object? paymentMethodId = freezed,
    Object? items = freezed,
    Object? subtotal = freezed,
    Object? shippingPrice = freezed,
    Object? total = freezed,
    Object? manualTotal = freezed,
    Object? discount = freezed,
    Object? coupon = freezed,
    Object? storeId = null,
    Object? status = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryStatus = freezed,
    Object? metadata = freezed,
    Object? setToNull = null,
  }) {
    return _then(_$OrderUpdateImpl(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingNote: freezed == shippingNote
          ? _value.shippingNote
          : shippingNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIp: freezed == customerIp
          ? _value.customerIp
          : customerIp // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCity: freezed == shippingCity
          ? _value.shippingCity
          : shippingCity // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingState: freezed == shippingState
          ? _value.shippingState
          : shippingState // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodId: freezed == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
      shippingPrice: freezed == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      manualTotal: freezed == manualTotal
          ? _value.manualTotal
          : manualTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      setToNull: null == setToNull
          ? _value._setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderUpdateImpl implements _OrderUpdate {
  const _$OrderUpdateImpl(
      {this.customerName,
      this.shippingNote,
      this.customerPhone,
      this.customerIp,
      this.shippingAddress,
      this.shippingCity,
      this.shippingState,
      this.shippingMethodId,
      this.paymentMethodId,
      final List<OrderItem>? items,
      this.subtotal,
      this.shippingPrice,
      this.total,
      this.manualTotal,
      this.discount,
      this.coupon,
      required this.storeId,
      this.status,
      this.paymentStatus,
      this.deliveryStatus,
      final Map<String, dynamic>? metadata,
      @JsonKey(includeFromJson: false) final List<String> setToNull = const []})
      : _items = items,
        _metadata = metadata,
        _setToNull = setToNull;

  factory _$OrderUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderUpdateImplFromJson(json);

  @override
  final String? customerName;
  @override
  final String? shippingNote;
  @override
  final String? customerPhone;
  @override
  final String? customerIp;
  @override
  final String? shippingAddress;
  @override
  final String? shippingCity;
  @override
  final String? shippingState;
  @override
  final String? shippingMethodId;
  @override
  final String? paymentMethodId;
  final List<OrderItem>? _items;
  @override
  List<OrderItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final num? subtotal;
  @override
  final num? shippingPrice;
  @override
  final num? total;
  @override
  final num? manualTotal;
  @override
  final num? discount;
  @override
  final String? coupon;
  @override
  final String storeId;
  @override
  final OrderStatus? status;
  @override
  final PaymentStatus? paymentStatus;
  @override
  final DeliveryStatus? deliveryStatus;
// metadata
  final Map<String, dynamic>? _metadata;
// metadata
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
    return 'OrderUpdate(customerName: $customerName, shippingNote: $shippingNote, customerPhone: $customerPhone, customerIp: $customerIp, shippingAddress: $shippingAddress, shippingCity: $shippingCity, shippingState: $shippingState, shippingMethodId: $shippingMethodId, paymentMethodId: $paymentMethodId, items: $items, subtotal: $subtotal, shippingPrice: $shippingPrice, total: $total, manualTotal: $manualTotal, discount: $discount, coupon: $coupon, storeId: $storeId, status: $status, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, metadata: $metadata, setToNull: $setToNull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderUpdateImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.shippingNote, shippingNote) ||
                other.shippingNote == shippingNote) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.customerIp, customerIp) ||
                other.customerIp == customerIp) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.shippingCity, shippingCity) ||
                other.shippingCity == shippingCity) &&
            (identical(other.shippingState, shippingState) ||
                other.shippingState == shippingState) &&
            (identical(other.shippingMethodId, shippingMethodId) ||
                other.shippingMethodId == shippingMethodId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shippingPrice, shippingPrice) ||
                other.shippingPrice == shippingPrice) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.manualTotal, manualTotal) ||
                other.manualTotal == manualTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._setToNull, _setToNull));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerName,
        shippingNote,
        customerPhone,
        customerIp,
        shippingAddress,
        shippingCity,
        shippingState,
        shippingMethodId,
        paymentMethodId,
        const DeepCollectionEquality().hash(_items),
        subtotal,
        shippingPrice,
        total,
        manualTotal,
        discount,
        coupon,
        storeId,
        status,
        paymentStatus,
        deliveryStatus,
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(_setToNull)
      ]);

  /// Create a copy of OrderUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderUpdateImplCopyWith<_$OrderUpdateImpl> get copyWith =>
      __$$OrderUpdateImplCopyWithImpl<_$OrderUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderUpdateImplToJson(
      this,
    );
  }
}

abstract class _OrderUpdate implements OrderUpdate {
  const factory _OrderUpdate(
          {final String? customerName,
          final String? shippingNote,
          final String? customerPhone,
          final String? customerIp,
          final String? shippingAddress,
          final String? shippingCity,
          final String? shippingState,
          final String? shippingMethodId,
          final String? paymentMethodId,
          final List<OrderItem>? items,
          final num? subtotal,
          final num? shippingPrice,
          final num? total,
          final num? manualTotal,
          final num? discount,
          final String? coupon,
          required final String storeId,
          final OrderStatus? status,
          final PaymentStatus? paymentStatus,
          final DeliveryStatus? deliveryStatus,
          final Map<String, dynamic>? metadata,
          @JsonKey(includeFromJson: false) final List<String> setToNull}) =
      _$OrderUpdateImpl;

  factory _OrderUpdate.fromJson(Map<String, dynamic> json) =
      _$OrderUpdateImpl.fromJson;

  @override
  String? get customerName;
  @override
  String? get shippingNote;
  @override
  String? get customerPhone;
  @override
  String? get customerIp;
  @override
  String? get shippingAddress;
  @override
  String? get shippingCity;
  @override
  String? get shippingState;
  @override
  String? get shippingMethodId;
  @override
  String? get paymentMethodId;
  @override
  List<OrderItem>? get items;
  @override
  num? get subtotal;
  @override
  num? get shippingPrice;
  @override
  num? get total;
  @override
  num? get manualTotal;
  @override
  num? get discount;
  @override
  String? get coupon;
  @override
  String get storeId;
  @override
  OrderStatus? get status;
  @override
  PaymentStatus? get paymentStatus;
  @override
  DeliveryStatus? get deliveryStatus; // metadata
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull;

  /// Create a copy of OrderUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderUpdateImplCopyWith<_$OrderUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
