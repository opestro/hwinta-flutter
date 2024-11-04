import 'package:feeef_marchant/feeef/interfaces/embadded/order_item.dart';
import 'package:feeef_marchant/feeef/interfaces/helpers.dart';
import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/feeef/shipping_methods/models/shipping_method.dart';
import 'package:feeef_marchant/feeef/stores/models/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order extends OrderEntity with _$Order implements Model, ModelMetadata {
  factory Order({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default({}) Map<String, dynamic> metadata,
    String? customerName,
    required String customerPhone,
    String? customerNote,
    String? customerIp,
    String? shippingAddress,
    String? shippingCity,
    String? shippingState,
    String? shippingMethodId,
    String? paymentMethodId,
    required List<OrderItem> items,
    required num subtotal,
    num? shippingPrice,
    required num total,
    required num calculatedTotal,
    num? manualTotal,
    required num discount,
    String? coupon,
    required String storeId,
    required OrderStatus status,
    @Default(PaymentStatus.unpaid) PaymentStatus paymentStatus,
    @Default(DeliveryStatus.pending) DeliveryStatus deliveryStatus,
    Store? store,
    ShippingMethod? shippingMethod,
    // metadata
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

// // OrderCreate
@freezed
class OrderCreate with _$OrderCreate implements ModelCreate {
  const factory OrderCreate({
    String? id,
    String? customerName,
    String? shippingNote,
    required String customerPhone,
    String? customerIp,
    String? shippingAddress,
    String? shippingCity,
    String? shippingState,
    String? shippingMethodId,
    String? paymentMethodId,
    required List<OrderItem> items,
    num? subtotal,
    num? shippingPrice,
    num? total,
    num? manualTotal,
    num? discount,
    String? coupon,
    required String storeId,
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    DeliveryStatus? deliveryStatus,
    // metadata
    Map<String, dynamic>? metadata,
  }) = _OrderCreate;

  factory OrderCreate.fromJson(Map<String, dynamic> json) => _$OrderCreateFromJson(json);
}

// // OrderUpdate
@freezed
class OrderUpdate with _$OrderUpdate implements ModelUpdate {
  const factory OrderUpdate({
    String? customerName,
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
    required String storeId,
    OrderStatus? status,
    PaymentStatus? paymentStatus,
    DeliveryStatus? deliveryStatus,
    // metadata
    Map<String, dynamic>? metadata,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _OrderUpdate;

  factory OrderUpdate.fromJson(Map<String, dynamic> json) => _$OrderUpdateFromJson(json);
}



// extension
extension IsInjectedOrder on Order {
  bool get isInjected => metadata["isInjected"] == true;
}