import 'dart:ui';

import 'package:feeef_marchant/feeef/interfaces/order.dart';
import 'package:feeef_marchant/feeef/interfaces/store.dart';
import 'package:feeef_marchant/feeef/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_order_tag.freezed.dart';
part 'custom_order_tag.g.dart';

@freezed
class CustomOrderTag with _$CustomOrderTag {
  factory CustomOrderTag({
    required String name,
    @ColorSerializer() required Color color,
  }) = _CustomOrderTag;

  factory CustomOrderTag.fromJson(Map<String, dynamic> json) => _$CustomOrderTagFromJson(json);
}

@freezed
class CustomOrderTagHistory with _$CustomOrderTagHistory {
  factory CustomOrderTagHistory({
    required CustomOrderTag tag,
    String? note,
    required DateTime createdAt,
  }) = _CustomOrderTagHistory;

  factory CustomOrderTagHistory.fromJson(Map<String, dynamic> json) => _$CustomOrderTagHistoryFromJson(json);
}

// extension to StoreEntity
extension CustomOrderTagExtension on StoreEntity {
  List<CustomOrderTag> get customOrderTags {
    if (metadata['customOrderTags'] == null) return [];
    return List<CustomOrderTag>.from(
      metadata['customOrderTags'].map(
        (e) {
          return CustomOrderTag.fromJson(e);
        },
      ),
    );
  }
}

// extension to OrderEntity
extension CustomOrderTagHistoryExtension on OrderEntity {
  List<CustomOrderTagHistory> get customOrderTagHistories {
    if (metadata['customOrderTagHistories'] == null) return [];
    return List<CustomOrderTagHistory>.from(
      metadata['customOrderTagHistories'].map(
        (e) {
          return CustomOrderTagHistory.fromJson(e);
        },
      ),
    );
  }
}
