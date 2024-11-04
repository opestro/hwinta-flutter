// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      slug: json['slug'] as String,
      banner: json['banner'] == null
          ? null
          : StoreBanner.fromJson(json['banner'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : StoreAction.fromJson(json['action'] as Map<String, dynamic>),
      domain: json['domain'] == null
          ? null
          : StoreDomain.fromJson(json['domain'] as Map<String, dynamic>),
      decoration: json['decoration'] == null
          ? null
          : StoreDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
      userId: json['userId'] as String,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => EmbaddedCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      title: json['title'] as String?,
      description: json['description'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => EmbaddedAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => EmbaddedContact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      integrations: json['integrations'] == null
          ? const StoreIntegrations()
          : StoreIntegrations.fromJson(
              json['integrations'] as Map<String, dynamic>),
      defaultShippingRates: (json['defaultShippingRates'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
              .toList() ??
          const [],
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      blockedAt: json['blockedAt'] == null
          ? null
          : DateTime.parse(json['blockedAt'] as String),
      subscription: json['subscription'] == null
          ? null
          : StoreSubscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
      due: json['due'] as num?,
      configs: json['configs'] == null
          ? null
          : StoreConfigs.fromJson(json['configs'] as Map<String, dynamic>),
      metaPixelIds: (json['metaPixelIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'slug': instance.slug,
      'banner': instance.banner?.toJson(),
      'action': instance.action?.toJson(),
      'domain': instance.domain?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'userId': instance.userId,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
      'contacts': instance.contacts.map((e) => e.toJson()).toList(),
      'integrations': instance.integrations.toJson(),
      'defaultShippingRates': instance.defaultShippingRates,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'blockedAt': instance.blockedAt?.toIso8601String(),
      'subscription': instance.subscription?.toJson(),
      'due': instance.due,
      'configs': instance.configs?.toJson(),
      'metaPixelIds': instance.metaPixelIds,
    };

_$StoreCreateImpl _$$StoreCreateImplFromJson(Map<String, dynamic> json) =>
    _$StoreCreateImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      banner: json['banner'] == null
          ? null
          : StoreBanner.fromJson(json['banner'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : StoreAction.fromJson(json['action'] as Map<String, dynamic>),
      domain: json['domain'] == null
          ? null
          : StoreDomain.fromJson(json['domain'] as Map<String, dynamic>),
      decoration: json['decoration'] == null
          ? null
          : StoreDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      logoUrl: json['logoUrl'] as String?,
      ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => EmbaddedCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      title: json['title'] as String?,
      description: json['description'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => EmbaddedAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => EmbaddedContact.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      integrations: json['integrations'] == null
          ? const StoreIntegrations()
          : StoreIntegrations.fromJson(
              json['integrations'] as Map<String, dynamic>),
      defaultShippingRates: (json['defaultShippingRates'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
              .toList() ??
          const [],
      subscription: json['subscription'] == null
          ? null
          : StoreSubscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
      due: json['due'] as num?,
    );

Map<String, dynamic> _$$StoreCreateImplToJson(_$StoreCreateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'banner': instance.banner?.toJson(),
      'action': instance.action?.toJson(),
      'domain': instance.domain?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
      'contacts': instance.contacts.map((e) => e.toJson()).toList(),
      'integrations': instance.integrations.toJson(),
      'defaultShippingRates': instance.defaultShippingRates,
      'subscription': instance.subscription?.toJson(),
      'due': instance.due,
    };

_$StoreUpdateImpl _$$StoreUpdateImplFromJson(Map<String, dynamic> json) =>
    _$StoreUpdateImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      banner: json['banner'] == null
          ? null
          : StoreBanner.fromJson(json['banner'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : StoreAction.fromJson(json['action'] as Map<String, dynamic>),
      domain: json['domain'] == null
          ? null
          : StoreDomain.fromJson(json['domain'] as Map<String, dynamic>),
      decoration: json['decoration'] == null
          ? null
          : StoreDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      logoUrl: json['logoUrl'] as String?,
      ondarkLogoUrl: json['ondarkLogoUrl'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => EmbaddedCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => EmbaddedAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      contacts: (json['contacts'] as List<dynamic>?)
          ?.map((e) => EmbaddedContact.fromJson(e as Map<String, dynamic>))
          .toList(),
      integrations: json['integrations'] == null
          ? null
          : StoreIntegrations.fromJson(
              json['integrations'] as Map<String, dynamic>),
      defaultShippingRates: (json['defaultShippingRates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)?.map((e) => e as num?).toList())
          .toList(),
      subscription: json['subscription'] == null
          ? null
          : StoreSubscription.fromJson(
              json['subscription'] as Map<String, dynamic>),
      due: json['due'] as num?,
      configs: json['configs'] == null
          ? null
          : StoreConfigs.fromJson(json['configs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StoreUpdateImplToJson(_$StoreUpdateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'banner': instance.banner?.toJson(),
      'action': instance.action?.toJson(),
      'domain': instance.domain?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'logoUrl': instance.logoUrl,
      'ondarkLogoUrl': instance.ondarkLogoUrl,
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
      'contacts': instance.contacts?.map((e) => e.toJson()).toList(),
      'integrations': instance.integrations?.toJson(),
      'defaultShippingRates': instance.defaultShippingRates,
      'subscription': instance.subscription?.toJson(),
      'due': instance.due,
      'configs': instance.configs?.toJson(),
    };

_$StoreSubscriptionImpl _$$StoreSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreSubscriptionImpl(
      type: $enumDecode(_$StoreSubscriptionTypeEnumMap, json['type']),
      status: $enumDecode(_$StoreSubscriptionStatusEnumMap, json['status']),
      startedAt: DateTime.parse(json['startedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$StoreSubscriptionImplToJson(
        _$StoreSubscriptionImpl instance) =>
    <String, dynamic>{
      'type': _$StoreSubscriptionTypeEnumMap[instance.type]!,
      'status': _$StoreSubscriptionStatusEnumMap[instance.status]!,
      'startedAt': instance.startedAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$StoreSubscriptionTypeEnumMap = {
  StoreSubscriptionType.free: 'free',
  StoreSubscriptionType.quota: 'quota',
  StoreSubscriptionType.percentage: 'percentage',
};

const _$StoreSubscriptionStatusEnumMap = {
  StoreSubscriptionStatus.active: 'active',
  StoreSubscriptionStatus.inactive: 'inactive',
  StoreSubscriptionStatus.expired: 'expired',
  StoreSubscriptionStatus.canceled: 'canceled',
};

_$StoreConfigsImpl _$$StoreConfigsImplFromJson(Map<String, dynamic> json) =>
    _$StoreConfigsImpl(
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => StoreCurrencyConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultCurrency: (json['defaultCurrency'] as num).toInt(),
    );

Map<String, dynamic> _$$StoreConfigsImplToJson(_$StoreConfigsImpl instance) =>
    <String, dynamic>{
      'currencies': instance.currencies.map((e) => e.toJson()).toList(),
      'defaultCurrency': instance.defaultCurrency,
    };

_$StoreCurrencyConfigImpl _$$StoreCurrencyConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreCurrencyConfigImpl(
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      precision: (json['precision'] as num).toInt(),
      rate: json['rate'] as num,
    );

Map<String, dynamic> _$$StoreCurrencyConfigImplToJson(
        _$StoreCurrencyConfigImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'precision': instance.precision,
      'rate': instance.rate,
    };
