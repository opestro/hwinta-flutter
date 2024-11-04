// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreDomainImpl _$$StoreDomainImplFromJson(Map<String, dynamic> json) =>
    _$StoreDomainImpl(
      name: json['name'] as String,
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$StoreDomainImplToJson(_$StoreDomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$StoreBannerImpl _$$StoreBannerImplFromJson(Map<String, dynamic> json) =>
    _$StoreBannerImpl(
      title: json['title'] as String,
      url: json['url'] as String?,
      enabled: json['enabled'] as bool? ?? false,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$StoreBannerImplToJson(_$StoreBannerImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'enabled': instance.enabled,
      'metadata': instance.metadata,
    };

_$StoreDecorationImpl _$$StoreDecorationImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDecorationImpl(
      primary: json['primary'] == null
          ? Colors.green
          : const ColorSerializer().fromJson((json['primary'] as num).toInt()),
      onPrimary: json['onPrimary'] == null
          ? Colors.white
          : const ColorSerializer()
              .fromJson((json['onPrimary'] as num).toInt()),
      showStoreLogoInHeader: json['showStoreLogoInHeader'] as bool?,
      logoFullHeight: json['logoFullHeight'] as bool?,
      showStoreNameInHeader: json['showStoreNameInHeader'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$StoreDecorationImplToJson(
        _$StoreDecorationImpl instance) =>
    <String, dynamic>{
      'primary': const ColorSerializer().toJson(instance.primary),
      'onPrimary': const ColorSerializer().toJson(instance.onPrimary),
      'showStoreLogoInHeader': instance.showStoreLogoInHeader,
      'logoFullHeight': instance.logoFullHeight,
      'showStoreNameInHeader': instance.showStoreNameInHeader,
      'metadata': instance.metadata,
    };

_$StoreActionImpl _$$StoreActionImplFromJson(Map<String, dynamic> json) =>
    _$StoreActionImpl(
      label: json['label'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$StoreActionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$StoreActionImplToJson(_$StoreActionImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'url': instance.url,
      'type': _$StoreActionTypeEnumMap[instance.type]!,
    };

const _$StoreActionTypeEnumMap = {
  StoreActionType.link: 'link',
  StoreActionType.whatsapp: 'whatsapp',
  StoreActionType.telegram: 'telegram',
  StoreActionType.phone: 'phone',
};

_$EmbaddedAddressImpl _$$EmbaddedAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbaddedAddressImpl(
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      street: json['street'] as String?,
      zip: json['zip'] as String?,
      location: json['location'] == null
          ? null
          : EmbaddedLocation.fromJson(json['location'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$EmbaddedAddressImplToJson(
        _$EmbaddedAddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'street': instance.street,
      'zip': instance.zip,
      'location': instance.location?.toJson(),
      'metadata': instance.metadata,
    };

_$EmbaddedLocationImpl _$$EmbaddedLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbaddedLocationImpl(
      geohash: json['geohash'] as String?,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$EmbaddedLocationImplToJson(
        _$EmbaddedLocationImpl instance) =>
    <String, dynamic>{
      'geohash': instance.geohash,
      'lat': instance.lat,
      'long': instance.long,
    };

_$EmbaddedContactImpl _$$EmbaddedContactImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbaddedContactImpl(
      name: json['name'] as String?,
      type: $enumDecode(_$EmbaddedContactTypeEnumMap, json['type']),
      value: json['value'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$EmbaddedContactImplToJson(
        _$EmbaddedContactImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$EmbaddedContactTypeEnumMap[instance.type]!,
      'value': instance.value,
      'metadata': instance.metadata,
    };

const _$EmbaddedContactTypeEnumMap = {
  EmbaddedContactType.phone: 'phone',
  EmbaddedContactType.email: 'email',
  EmbaddedContactType.facebook: 'facebook',
  EmbaddedContactType.twitter: 'twitter',
  EmbaddedContactType.instagram: 'instagram',
  EmbaddedContactType.linkedin: 'linkedin',
  EmbaddedContactType.website: 'website',
  EmbaddedContactType.whatsapp: 'whatsapp',
  EmbaddedContactType.telegram: 'telegram',
  EmbaddedContactType.signal: 'signal',
  EmbaddedContactType.viber: 'viber',
  EmbaddedContactType.skype: 'skype',
  EmbaddedContactType.zoom: 'zoom',
  EmbaddedContactType.other: 'other',
};
