// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingMethodImpl _$$ShippingMethodImplFromJson(Map<String, dynamic> json) =>
    _$ShippingMethodImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      name: json['name'] as String,
      description: json['description'] as String?,
      logoUrl: json['logoUrl'] as String?,
      ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
      price: json['price'] as num? ?? 0,
      forks: json['forks'] as num? ?? 0,
      sourceId: json['sourceId'] as String?,
      storeId: json['storeId'] as String,
      rates: (json['rates'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
              .toList() ??
          const [],
      status: $enumDecode(_$ShippingMethodStatusEnumMap, json['status']),
      policy: $enumDecode(_$ShippingMethodPolicyEnumMap, json['policy']),
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
    );

Map<String, dynamic> _$$ShippingMethodImplToJson(
        _$ShippingMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'metadata': instance.metadata,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'price': instance.price,
      'forks': instance.forks,
      'sourceId': instance.sourceId,
      'storeId': instance.storeId,
      'rates': instance.rates,
      'status': _$ShippingMethodStatusEnumMap[instance.status]!,
      'policy': _$ShippingMethodPolicyEnumMap[instance.policy]!,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
    };

const _$ShippingMethodStatusEnumMap = {
  ShippingMethodStatus.draft: 'draft',
  ShippingMethodStatus.published: 'published',
  ShippingMethodStatus.archived: 'archived',
};

const _$ShippingMethodPolicyEnumMap = {
  ShippingMethodPolicy.private: 'private',
  ShippingMethodPolicy.public: 'public',
};

_$ShippingMethodCreateImpl _$$ShippingMethodCreateImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingMethodCreateImpl(
      id: json['id'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      name: json['name'] as String,
      description: json['description'] as String?,
      logoUrl: json['logoUrl'] as String?,
      ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
      price: json['price'] as num? ?? 0,
      forks: json['forks'] as num? ?? 0,
      sourceId: json['sourceId'] as String?,
      storeId: json['storeId'] as String,
      rates: (json['rates'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
              .toList() ??
          const [],
      status: $enumDecode(_$ShippingMethodStatusEnumMap, json['status']),
      policy: $enumDecode(_$ShippingMethodPolicyEnumMap, json['policy']),
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
    );

Map<String, dynamic> _$$ShippingMethodCreateImplToJson(
        _$ShippingMethodCreateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'price': instance.price,
      'forks': instance.forks,
      'sourceId': instance.sourceId,
      'storeId': instance.storeId,
      'rates': instance.rates,
      'status': _$ShippingMethodStatusEnumMap[instance.status]!,
      'policy': _$ShippingMethodPolicyEnumMap[instance.policy]!,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
    };

_$ShippingMethodUpdateImpl _$$ShippingMethodUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingMethodUpdateImpl(
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      logoUrl: json['logoUrl'] as String?,
      ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
      price: json['price'] as num?,
      storeId: json['storeId'] as String?,
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
          .toList(),
      status:
          $enumDecodeNullable(_$ShippingMethodStatusEnumMap, json['status']),
      policy:
          $enumDecodeNullable(_$ShippingMethodPolicyEnumMap, json['policy']),
    );

Map<String, dynamic> _$$ShippingMethodUpdateImplToJson(
        _$ShippingMethodUpdateImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'price': instance.price,
      'storeId': instance.storeId,
      'rates': instance.rates,
      'status': _$ShippingMethodStatusEnumMap[instance.status],
      'policy': _$ShippingMethodPolicyEnumMap[instance.policy],
    };
