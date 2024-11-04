import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

// productId: string;
// variantPath?: string;
// quantity: number;
// price: number;``
@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    required String productId,
    required String productName,
    String? variantPath,
    required num quantity,
    required num price,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}
