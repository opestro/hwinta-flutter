// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariantImpl _$$ProductVariantImplFromJson(Map<String, dynamic> json) =>
    _$ProductVariantImpl(
      name: json['name'] as String? ?? "option",
      options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  ProductVariantOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductVariantImplToJson(
        _$ProductVariantImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'options': instance.options.map((e) => e.toJson()).toList(),
    };

_$ProductVariantOptionImpl _$$ProductVariantOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantOptionImpl(
      name: json['name'] as String,
      type: $enumDecodeNullable(_$VariantOptionTypeEnumMap, json['type']) ??
          VariantOptionType.text,
      value: json['value'],
      child: json['child'] == null
          ? null
          : ProductVariant.fromJson(json['child'] as Map<String, dynamic>),
      sku: json['sku'] as String?,
      price: json['price'] as num?,
      discount: json['discount'] as num?,
      stock: json['stock'] as num?,
      sold: json['sold'] as num?,
      mustSelectChild: json['mustSelectChild'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductVariantOptionImplToJson(
        _$ProductVariantOptionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$VariantOptionTypeEnumMap[instance.type]!,
      'value': instance.value,
      'child': instance.child?.toJson(),
      'sku': instance.sku,
      'price': instance.price,
      'discount': instance.discount,
      'stock': instance.stock,
      'sold': instance.sold,
      'mustSelectChild': instance.mustSelectChild,
    };

const _$VariantOptionTypeEnumMap = {
  VariantOptionType.color: 'color',
  VariantOptionType.image: 'image',
  VariantOptionType.text: 'text',
};
