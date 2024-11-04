import 'package:feeef_marchant/feeef/interfaces/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
class ProductVariant with _$ProductVariant {
  factory ProductVariant({
    @Default("option") String name,
    @Default([]) List<ProductVariantOption> options,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, dynamic> json) => _$ProductVariantFromJson(json);
}

// ProductVariantOption
@freezed
class ProductVariantOption with _$ProductVariantOption {
  factory ProductVariantOption({
    required String name,
    @Default(VariantOptionType.text) VariantOptionType type,
    dynamic value,
    ProductVariant? child,
    //
    String? sku,
    num? price,
    num? discount,
    num? stock,
    num? sold,
    @Default(false) bool mustSelectChild,
  }) = _ProductVariantOption;

  factory ProductVariantOption.fromJson(Map<String, dynamic> json) => _$ProductVariantOptionFromJson(json);
}
