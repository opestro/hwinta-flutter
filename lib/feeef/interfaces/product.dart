import 'package:feeef_marchant/feeef/interfaces/embadded/embadded_category.dart';

import 'embadded/product_variant.dart';
export 'embadded/product_variant.dart';

abstract class ProductEntity {
  String get slug;
  ProductDecoration? get decoration;
  String? get name;
  String? get photoUrl;
  List<String> get media;
  String get storeId;
  EmbaddedCategory? get category;
  String? get title;
  String? get description;
  String? get body;
  String? get sku;
  num get price;
  num? get cost;
  num? get discount;
  num get stock;
  num get sold;
  num get views;
  num get likes;
  num get dislikes;
  ProductVariant? get variant;
  ProductStatus get status;
  ProductType get type;
  DateTime? get verifiedAt;
  DateTime? get blockedAt;
  Map<String, dynamic> get metadata;
}

enum ProductStatus {
  draft,
  published,
  archived,
  deleted,
}

enum VariantOptionType {
  color,
  image,
  text,
}

enum ProductType {
  physical,
  digital,
  service,
}

typedef ProductDecoration = dynamic;


// abstract class ProductDecoration {
//   Map<String, dynamic> get metadata;
// }

// abstract class ProductVariant {
//   String get name;
//   List<ProductVariantOption> get options;
// }

// abstract class ProductVariantOption {
//   String get name;
//   String? get sku;
//   num? get price;
//   num? get discount;
//   num? get stock;
//   num? get sold;
//   VariantOptionType? get type;
//   ProductVariant? get child;
//   num? get mediaIndex;
//   String? get hint;
// }
