import 'package:feeef_marchant/feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef_marchant/feeef/interfaces/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/helpers.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product extends ProductEntity with _$Product implements Model, ModelMetadata {
  factory Product({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String slug,
    ProductDecoration? decoration,
    required String name,
    String? photoUrl,
    required List<String> media,
    required String storeId,
    String? shippingMethodId,
    EmbaddedCategory? category,
    String? title,
    String? description,
    String? body,
    String? sku,
    String? barcode,
    required num price,
    num? cost,
    num? discount,
    @Default(0) num stock,
    @Default(0) num sold,
    @Default(0) num views,
    @Default(0) num likes,
    ProductVariant? variant,
    @Default(0) num dislikes,
    @Default(ProductStatus.draft) ProductStatus status,
    @Default(ProductType.physical) ProductType type,
    DateTime? verifiedAt,
    DateTime? blockedAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

// ProductCreate
@freezed
class ProductCreate with _$ProductCreate implements ModelCreate {
  const factory ProductCreate({
    String? id,
    required String name,
    required String slug,
    ProductDecoration? decoration,
    String? photoUrl,
    required List<String> media,
    required String storeId,
    String? shippingMethodId,
    EmbaddedCategory? category,
    String? title,
    String? description,
    String? body,
    String? sku,
    String? barcode,
    required num price,
    num? cost,
    num? discount,
    required num stock,
    ProductVariant? variant,
    @Default(ProductStatus.draft) ProductStatus status,
    @Default(ProductType.physical) ProductType type,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ProductCreate;

  factory ProductCreate.fromJson(Map<String, dynamic> json) => _$ProductCreateFromJson(json);
}

// ProductUpdate
@freezed
class ProductUpdate with _$ProductUpdate implements ModelUpdate {
  const factory ProductUpdate({
    String? name,
    String? slug,
    ProductDecoration? decoration,
    String? photoUrl,
    List<String>? media,
    String? storeId,
    String? shippingMethodId,
    EmbaddedCategory? category,
    String? title,
    String? description,
    String? body,
    String? sku,
    String? barcode,
    num? price,
    num? cost,
    num? discount,
    num? stock,
    ProductVariant? variant,
    ProductStatus? status,
    ProductType? type,
    Map<String, dynamic>? metadata,
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
  }) = _ProductUpdate;

  factory ProductUpdate.fromJson(Map<String, dynamic> json) => _$ProductUpdateFromJson(json);
}
