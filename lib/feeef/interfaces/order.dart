import 'package:feeef_marchant/feeef/interfaces/embadded/order_item.dart';
import 'package:feeef_marchant/feeef/interfaces/shipping_method.dart';
import 'package:flutter/material.dart';

import 'store.dart';

abstract class OrderEntity {
  String get id;
  String? get customerName;
  String get customerPhone;
  String? get customerIp;
  String? get shippingAddress;
  String? get shippingCity;
  String? get shippingState;
  String? get shippingMethodId;
  String? get paymentMethodId;
  List<OrderItem> get items;
  num get subtotal;
  num? get shippingPrice;
  num get total;
  num get discount;
  String? get coupon;
  String get storeId;
  Map<String, dynamic> get metadata;
  OrderStatus get status;
  PaymentStatus get paymentStatus;
  DeliveryStatus get deliveryStatus;
  DateTime get createdAt;
  DateTime get updatedAt;
  StoreEntity? get store;
  ShippingMethodEntity? get shippingMethod;
}

enum OrderStatus {
  draft,
  pending,
  processing,
  completed,
  cancelled;

  Color get color {
    switch (this) {
      case OrderStatus.draft:
        return Colors.grey;
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.processing:
        return Colors.blue;
      case OrderStatus.completed:
        return Colors.green;
      case OrderStatus.cancelled:
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  // icon
  IconData get icon {
    switch (this) {
      case OrderStatus.draft:
        return Icons.drafts;
      case OrderStatus.pending:
        return Icons.pending_actions_outlined;
      case OrderStatus.processing:
        return Icons.timer;
      case OrderStatus.completed:
        return Icons.done_all;
      case OrderStatus.cancelled:
        return Icons.cancel_rounded;
    }
  }
}

// PaymentStatus
enum PaymentStatus {
  unpaid,
  paid,
  received;

  Color get color {
    switch (this) {
      case PaymentStatus.unpaid:
        return Colors.red;
      case PaymentStatus.paid:
        return Colors.green;
      case PaymentStatus.received:
        return Colors.blue;
      default:
        return Colors.black;
    }
  }
}

// DeliveryStatus
enum DeliveryStatus {
  pending,
  delivering,
  delivered,
  returned;

  Color get color {
    switch (this) {
      case DeliveryStatus.pending:
        return Colors.orange;
      case DeliveryStatus.delivering:
        return Colors.blue;
      case DeliveryStatus.delivered:
        return Colors.green;
      case DeliveryStatus.returned:
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
