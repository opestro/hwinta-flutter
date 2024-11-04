import 'package:feeef_marchant/feeef/interfaces/helpers.dart';
import 'package:feeef_marchant/feeef/interfaces/shipping_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_method.freezed.dart';
part 'shipping_method.g.dart';

// String get name;
// String? get description;
// String? get logoUrl;
// String? get ondarkLogoUrl;
// num get price;
// num get forks;
// String get sourceId;
// String get storeId;
// List<num?> get rates;
// ShippingMethodStatus get status;
// ShippingMethodPolicy get policy;
// DateTime get verifiedAt;
// StoreEntity get store;
// List<OrderEntity> get orders;
// ShippingMethodEntity? get source;

@freezed
class ShippingMethod extends ShippingMethodEntity with _$ShippingMethod implements Model, ModelMetadata {
  factory ShippingMethod({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default({}) Map<String, dynamic> metadata,
    required String name,
    String? description,
    String? logoUrl,
    String? ondarkLogoUrl,
    @Default(0) num price,
    @Default(0) num forks,
    String? sourceId,
    required String storeId,
    @Default([]) List<List<num?>?> rates,
    required ShippingMethodStatus status,
    required ShippingMethodPolicy policy,
    DateTime? verifiedAt,
  }) = _ShippingMethod;

  factory ShippingMethod.fromJson(Map<String, dynamic> json) => _$ShippingMethodFromJson(json);
}

// ShippingMethodCreate
@freezed
class ShippingMethodCreate with _$ShippingMethodCreate implements ModelCreate {
  const factory ShippingMethodCreate({
    String? id,
    @Default({}) Map<String, dynamic> metadata,
    required String name,
    String? description,
    String? logoUrl,
    String? ondarkLogoUrl,
    @Default(0) num price,
    @Default(0) num forks,
    String? sourceId,
    required String storeId,
    @Default([]) List<List<num?>?> rates,
    required ShippingMethodStatus status,
    required ShippingMethodPolicy policy,
    DateTime? verifiedAt,
  }) = _ShippingMethodCreate;

  factory ShippingMethodCreate.fromJson(Map<String, dynamic> json) => _$ShippingMethodCreateFromJson(json);
}

// ShippingMethodUpdate
@freezed
class ShippingMethodUpdate with _$ShippingMethodUpdate implements ModelUpdate {
  const factory ShippingMethodUpdate({
    Map<String, dynamic>? metadata,
    String? name,
    String? description,
    String? logoUrl,
    String? ondarkLogoUrl,
    num? price,
    // String? sourceId,
    String? storeId,
    List<List<num?>?>? rates,
    ShippingMethodStatus? status,
    ShippingMethodPolicy? policy,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _ShippingMethodUpdate;

  factory ShippingMethodUpdate.fromJson(Map<String, dynamic> json) => _$ShippingMethodUpdateFromJson(json);
}
