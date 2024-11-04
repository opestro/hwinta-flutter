// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_integrations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreIntegrationsImpl _$$StoreIntegrationsImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreIntegrationsImpl(
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      metaPixel: json['metaPixel'] == null
          ? null
          : MetaPixelIntegration.fromJson(
              json['metaPixel'] as Map<String, dynamic>),
      yalidine: json['yalidine'] == null
          ? null
          : YalidineDeliveryIntegration.fromJson(
              json['yalidine'] as Map<String, dynamic>),
      echotrak: json['echotrak'] == null
          ? null
          : EchotrakDeliveryIntegration.fromJson(
              json['echotrak'] as Map<String, dynamic>),
      procolis: json['procolis'] == null
          ? null
          : ProcolisDeliveryIntegration.fromJson(
              json['procolis'] as Map<String, dynamic>),
      noest: json['noest'] == null
          ? null
          : NoestDeliveryIntegration.fromJson(
              json['noest'] as Map<String, dynamic>),
      googleAnalytics:
          json['googleAnalytics'] as Map<String, dynamic>? ?? const {},
      googleSheet: json['googleSheet'] == null
          ? null
          : GoogleSheetsIntegration.fromJson(
              json['googleSheet'] as Map<String, dynamic>),
      sms: json['sms'] as Map<String, dynamic>? ?? const {},
      telegram: json['telegram'] as Map<String, dynamic>? ?? const {},
      maystroDelivery:
          json['maystroDelivery'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$StoreIntegrationsImplToJson(
        _$StoreIntegrationsImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'metaPixel': instance.metaPixel?.toJson(),
      'yalidine': instance.yalidine?.toJson(),
      'echotrak': instance.echotrak?.toJson(),
      'procolis': instance.procolis?.toJson(),
      'noest': instance.noest?.toJson(),
      'googleAnalytics': instance.googleAnalytics,
      'googleSheet': instance.googleSheet?.toJson(),
      'sms': instance.sms,
      'telegram': instance.telegram,
      'maystroDelivery': instance.maystroDelivery,
    };

_$MetaPixelIntegrationImpl _$$MetaPixelIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$MetaPixelIntegrationImpl(
      id: json['id'] as String? ?? 'default',
      pixels: (json['pixels'] as List<dynamic>?)
              ?.map((e) => MetaPixel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$MetaPixelIntegrationImplToJson(
        _$MetaPixelIntegrationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pixels': instance.pixels.map((e) => e.toJson()).toList(),
      'active': instance.active,
      'metadata': instance.metadata,
    };

_$MetaPixelImpl _$$MetaPixelImplFromJson(Map<String, dynamic> json) =>
    _$MetaPixelImpl(
      id: json['id'] as String,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$$MetaPixelImplToJson(_$MetaPixelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
    };

_$YalidineDeliveryIntegrationImpl _$$YalidineDeliveryIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$YalidineDeliveryIntegrationImpl(
      id: json['id'] as String,
      token: json['token'] as String,
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$YalidineDeliveryIntegrationImplToJson(
        _$YalidineDeliveryIntegrationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'active': instance.active,
      'metadata': instance.metadata,
    };

_$EchotrakDeliveryIntegrationImpl _$$EchotrakDeliveryIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$EchotrakDeliveryIntegrationImpl(
      baseUrl: json['baseUrl'] as String,
      token: json['token'] as String,
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$EchotrakDeliveryIntegrationImplToJson(
        _$EchotrakDeliveryIntegrationImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'token': instance.token,
      'active': instance.active,
      'metadata': instance.metadata,
    };

_$GoogleSheetsIntegrationImpl _$$GoogleSheetsIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleSheetsIntegrationImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      deploymentId: json['deploymentId'] as String?,
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$GoogleSheetsIntegrationImplToJson(
        _$GoogleSheetsIntegrationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'deploymentId': instance.deploymentId,
      'active': instance.active,
      'metadata': instance.metadata,
    };

_$ProcolisDeliveryIntegrationImpl _$$ProcolisDeliveryIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$ProcolisDeliveryIntegrationImpl(
      key: json['key'] as String,
      token: json['token'] as String,
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ProcolisDeliveryIntegrationImplToJson(
        _$ProcolisDeliveryIntegrationImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'token': instance.token,
      'active': instance.active,
      'metadata': instance.metadata,
    };

_$NoestDeliveryIntegrationImpl _$$NoestDeliveryIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$NoestDeliveryIntegrationImpl(
      guid: json['guid'] as String,
      token: json['token'] as String,
      active: json['active'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$NoestDeliveryIntegrationImplToJson(
        _$NoestDeliveryIntegrationImpl instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'token': instance.token,
      'active': instance.active,
      'metadata': instance.metadata,
    };
