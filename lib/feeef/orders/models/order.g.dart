// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      customerName: json['customerName'] as String?,
      customerPhone: json['customerPhone'] as String,
      customerNote: json['customerNote'] as String?,
      customerIp: json['customerIp'] as String?,
      shippingAddress: json['shippingAddress'] as String?,
      shippingCity: json['shippingCity'] as String?,
      shippingState: json['shippingState'] as String?,
      shippingMethodId: json['shippingMethodId'] as String?,
      paymentMethodId: json['paymentMethodId'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: json['subtotal'] as num,
      shippingPrice: json['shippingPrice'] as num?,
      total: json['total'] as num,
      calculatedTotal: json['calculatedTotal'] as num,
      manualTotal: json['manualTotal'] as num?,
      discount: json['discount'] as num,
      coupon: json['coupon'] as String?,
      storeId: json['storeId'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      paymentStatus:
          $enumDecodeNullable(_$PaymentStatusEnumMap, json['paymentStatus']) ??
              PaymentStatus.unpaid,
      deliveryStatus: $enumDecodeNullable(
              _$DeliveryStatusEnumMap, json['deliveryStatus']) ??
          DeliveryStatus.pending,
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
      shippingMethod: json['shippingMethod'] == null
          ? null
          : ShippingMethod.fromJson(
              json['shippingMethod'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'metadata': instance.metadata,
      'customerName': instance.customerName,
      'customerPhone': instance.customerPhone,
      'customerNote': instance.customerNote,
      'customerIp': instance.customerIp,
      'shippingAddress': instance.shippingAddress,
      'shippingCity': instance.shippingCity,
      'shippingState': instance.shippingState,
      'shippingMethodId': instance.shippingMethodId,
      'paymentMethodId': instance.paymentMethodId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'subtotal': instance.subtotal,
      'shippingPrice': instance.shippingPrice,
      'total': instance.total,
      'calculatedTotal': instance.calculatedTotal,
      'manualTotal': instance.manualTotal,
      'discount': instance.discount,
      'coupon': instance.coupon,
      'storeId': instance.storeId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'store': instance.store?.toJson(),
      'shippingMethod': instance.shippingMethod?.toJson(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.draft: 'draft',
  OrderStatus.pending: 'pending',
  OrderStatus.processing: 'processing',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.paid: 'paid',
  PaymentStatus.received: 'received',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.pending: 'pending',
  DeliveryStatus.delivering: 'delivering',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.returned: 'returned',
};

_$OrderCreateImpl _$$OrderCreateImplFromJson(Map<String, dynamic> json) =>
    _$OrderCreateImpl(
      id: json['id'] as String?,
      customerName: json['customerName'] as String?,
      shippingNote: json['shippingNote'] as String?,
      customerPhone: json['customerPhone'] as String,
      customerIp: json['customerIp'] as String?,
      shippingAddress: json['shippingAddress'] as String?,
      shippingCity: json['shippingCity'] as String?,
      shippingState: json['shippingState'] as String?,
      shippingMethodId: json['shippingMethodId'] as String?,
      paymentMethodId: json['paymentMethodId'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: json['subtotal'] as num?,
      shippingPrice: json['shippingPrice'] as num?,
      total: json['total'] as num?,
      manualTotal: json['manualTotal'] as num?,
      discount: json['discount'] as num?,
      coupon: json['coupon'] as String?,
      storeId: json['storeId'] as String,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      paymentStatus:
          $enumDecodeNullable(_$PaymentStatusEnumMap, json['paymentStatus']),
      deliveryStatus:
          $enumDecodeNullable(_$DeliveryStatusEnumMap, json['deliveryStatus']),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$OrderCreateImplToJson(_$OrderCreateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerName': instance.customerName,
      'shippingNote': instance.shippingNote,
      'customerPhone': instance.customerPhone,
      'customerIp': instance.customerIp,
      'shippingAddress': instance.shippingAddress,
      'shippingCity': instance.shippingCity,
      'shippingState': instance.shippingState,
      'shippingMethodId': instance.shippingMethodId,
      'paymentMethodId': instance.paymentMethodId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'subtotal': instance.subtotal,
      'shippingPrice': instance.shippingPrice,
      'total': instance.total,
      'manualTotal': instance.manualTotal,
      'discount': instance.discount,
      'coupon': instance.coupon,
      'storeId': instance.storeId,
      'status': _$OrderStatusEnumMap[instance.status],
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus],
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus],
      'metadata': instance.metadata,
    };

_$OrderUpdateImpl _$$OrderUpdateImplFromJson(Map<String, dynamic> json) =>
    _$OrderUpdateImpl(
      customerName: json['customerName'] as String?,
      shippingNote: json['shippingNote'] as String?,
      customerPhone: json['customerPhone'] as String?,
      customerIp: json['customerIp'] as String?,
      shippingAddress: json['shippingAddress'] as String?,
      shippingCity: json['shippingCity'] as String?,
      shippingState: json['shippingState'] as String?,
      shippingMethodId: json['shippingMethodId'] as String?,
      paymentMethodId: json['paymentMethodId'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: json['subtotal'] as num?,
      shippingPrice: json['shippingPrice'] as num?,
      total: json['total'] as num?,
      manualTotal: json['manualTotal'] as num?,
      discount: json['discount'] as num?,
      coupon: json['coupon'] as String?,
      storeId: json['storeId'] as String,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      paymentStatus:
          $enumDecodeNullable(_$PaymentStatusEnumMap, json['paymentStatus']),
      deliveryStatus:
          $enumDecodeNullable(_$DeliveryStatusEnumMap, json['deliveryStatus']),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$OrderUpdateImplToJson(_$OrderUpdateImpl instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'shippingNote': instance.shippingNote,
      'customerPhone': instance.customerPhone,
      'customerIp': instance.customerIp,
      'shippingAddress': instance.shippingAddress,
      'shippingCity': instance.shippingCity,
      'shippingState': instance.shippingState,
      'shippingMethodId': instance.shippingMethodId,
      'paymentMethodId': instance.paymentMethodId,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'subtotal': instance.subtotal,
      'shippingPrice': instance.shippingPrice,
      'total': instance.total,
      'manualTotal': instance.manualTotal,
      'discount': instance.discount,
      'coupon': instance.coupon,
      'storeId': instance.storeId,
      'status': _$OrderStatusEnumMap[instance.status],
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus],
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus],
      'metadata': instance.metadata,
    };
