// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      slug: json['slug'] as String,
      decoration: json['decoration'],
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String?,
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
      storeId: json['storeId'] as String,
      shippingMethodId: json['shippingMethodId'] as String?,
      category: json['category'] == null
          ? null
          : EmbaddedCategory.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      body: json['body'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      price: json['price'] as num,
      cost: json['cost'] as num?,
      discount: json['discount'] as num?,
      stock: json['stock'] as num? ?? 0,
      sold: json['sold'] as num? ?? 0,
      views: json['views'] as num? ?? 0,
      likes: json['likes'] as num? ?? 0,
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      dislikes: json['dislikes'] as num? ?? 0,
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.draft,
      type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']) ??
          ProductType.physical,
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      blockedAt: json['blockedAt'] == null
          ? null
          : DateTime.parse(json['blockedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'slug': instance.slug,
      'decoration': instance.decoration,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'media': instance.media,
      'storeId': instance.storeId,
      'shippingMethodId': instance.shippingMethodId,
      'category': instance.category?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'price': instance.price,
      'cost': instance.cost,
      'discount': instance.discount,
      'stock': instance.stock,
      'sold': instance.sold,
      'views': instance.views,
      'likes': instance.likes,
      'variant': instance.variant?.toJson(),
      'dislikes': instance.dislikes,
      'status': _$ProductStatusEnumMap[instance.status]!,
      'type': _$ProductTypeEnumMap[instance.type]!,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'blockedAt': instance.blockedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.draft: 'draft',
  ProductStatus.published: 'published',
  ProductStatus.archived: 'archived',
  ProductStatus.deleted: 'deleted',
};

const _$ProductTypeEnumMap = {
  ProductType.physical: 'physical',
  ProductType.digital: 'digital',
  ProductType.service: 'service',
};

_$ProductCreateImpl _$$ProductCreateImplFromJson(Map<String, dynamic> json) =>
    _$ProductCreateImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      decoration: json['decoration'],
      photoUrl: json['photoUrl'] as String?,
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
      storeId: json['storeId'] as String,
      shippingMethodId: json['shippingMethodId'] as String?,
      category: json['category'] == null
          ? null
          : EmbaddedCategory.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      body: json['body'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      price: json['price'] as num,
      cost: json['cost'] as num?,
      discount: json['discount'] as num?,
      stock: json['stock'] as num,
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.draft,
      type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']) ??
          ProductType.physical,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ProductCreateImplToJson(_$ProductCreateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'decoration': instance.decoration,
      'photoUrl': instance.photoUrl,
      'media': instance.media,
      'storeId': instance.storeId,
      'shippingMethodId': instance.shippingMethodId,
      'category': instance.category?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'price': instance.price,
      'cost': instance.cost,
      'discount': instance.discount,
      'stock': instance.stock,
      'variant': instance.variant?.toJson(),
      'status': _$ProductStatusEnumMap[instance.status]!,
      'type': _$ProductTypeEnumMap[instance.type]!,
      'metadata': instance.metadata,
    };

_$ProductUpdateImpl _$$ProductUpdateImplFromJson(Map<String, dynamic> json) =>
    _$ProductUpdateImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      decoration: json['decoration'],
      photoUrl: json['photoUrl'] as String?,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
      storeId: json['storeId'] as String?,
      shippingMethodId: json['shippingMethodId'] as String?,
      category: json['category'] == null
          ? null
          : EmbaddedCategory.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      body: json['body'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      price: json['price'] as num?,
      cost: json['cost'] as num?,
      discount: json['discount'] as num?,
      stock: json['stock'] as num?,
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']),
      type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProductUpdateImplToJson(_$ProductUpdateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'decoration': instance.decoration,
      'photoUrl': instance.photoUrl,
      'media': instance.media,
      'storeId': instance.storeId,
      'shippingMethodId': instance.shippingMethodId,
      'category': instance.category?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'price': instance.price,
      'cost': instance.cost,
      'discount': instance.discount,
      'stock': instance.stock,
      'variant': instance.variant?.toJson(),
      'status': _$ProductStatusEnumMap[instance.status],
      'type': _$ProductTypeEnumMap[instance.type],
      'metadata': instance.metadata,
    };
