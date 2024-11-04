import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_integrations.freezed.dart';
part 'store_integrations.g.dart';

@freezed
class StoreIntegrations with _$StoreIntegrations {
  const StoreIntegrations._();
  const factory StoreIntegrations({
    @Default({}) Map<String, dynamic>? metadata,
    MetaPixelIntegration? metaPixel,
    YalidineDeliveryIntegration? yalidine,
    // @Default({}) Map<String, dynamic> echotrak,
    EchotrakDeliveryIntegration? echotrak,
    ProcolisDeliveryIntegration? procolis,
    NoestDeliveryIntegration? noest,
    @Default({}) Map<String, dynamic>? googleAnalytics,
    GoogleSheetsIntegration? googleSheet,
    @Default({}) Map<String, dynamic>? sms,
    @Default({}) Map<String, dynamic>? telegram,
    @Default({}) Map<String, dynamic>? maystroDelivery,
  }) = _StoreIntegrations;

  factory StoreIntegrations.fromJson(Map<String, dynamic> json) => _$StoreIntegrationsFromJson(json);
}

@freezed
class MetaPixelIntegration with _$MetaPixelIntegration {
  const MetaPixelIntegration._();
  const factory MetaPixelIntegration({
    @Default('default') String id,
    @Default([]) List<MetaPixel> pixels,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _MetaPixelIntegration;

  factory MetaPixelIntegration.fromJson(Map<String, dynamic> json) => _$MetaPixelIntegrationFromJson(json);
}

@freezed
class MetaPixel with _$MetaPixel {
  const MetaPixel._();
  const factory MetaPixel({
    required String id,
    String? key,
  }) = _MetaPixel;

  factory MetaPixel.fromJson(Map<String, dynamic> json) => _$MetaPixelFromJson(json);
}


/// 
/// YalidineDeliveryIntegration
///
@freezed
class YalidineDeliveryIntegration with _$YalidineDeliveryIntegration {
  const YalidineDeliveryIntegration._();
  const factory YalidineDeliveryIntegration({
    required String id,
    required String token,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _YalidineDeliveryIntegration;

  factory YalidineDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$YalidineDeliveryIntegrationFromJson(json);
}

///
/// EchotrakDeliveryIntegration
/// 
@freezed
class EchotrakDeliveryIntegration with _$EchotrakDeliveryIntegration {
  const EchotrakDeliveryIntegration._();
  const factory EchotrakDeliveryIntegration({
    required String baseUrl,
    required String token,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EchotrakDeliveryIntegration;

  factory EchotrakDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$EchotrakDeliveryIntegrationFromJson(json);
}

///
/// GoogleSheetsIntegration
/// 
@freezed
class GoogleSheetsIntegration with _$GoogleSheetsIntegration {

  factory GoogleSheetsIntegration({
    // the spreadsheet id
    String? id,
    // name of the sheet (page)
    String? name,
    // deployment id (google apps script)
    String? deploymentId,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _GoogleSheetsIntegration;

  factory GoogleSheetsIntegration.fromJson(Map<String, dynamic> json) => _$GoogleSheetsIntegrationFromJson(json);
}

///
/// ProcolisIntegration
/// 
@freezed
class ProcolisDeliveryIntegration with _$ProcolisDeliveryIntegration {
  const ProcolisDeliveryIntegration._();
  const factory ProcolisDeliveryIntegration({
    required String key,
    required String token,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _ProcolisDeliveryIntegration;

  factory ProcolisDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$ProcolisDeliveryIntegrationFromJson(json);
}

///
/// NoestDeliveryIntegration
/// 
@freezed
class NoestDeliveryIntegration with _$NoestDeliveryIntegration {
  const NoestDeliveryIntegration._();
  const factory NoestDeliveryIntegration({
    required String guid,
    required String token,
    @Default(true) bool active,
    @Default({}) Map<String, dynamic> metadata,
  }) = _NoestDeliveryIntegration;

  factory NoestDeliveryIntegration.fromJson(Map<String, dynamic> json) => _$NoestDeliveryIntegrationFromJson(json);
}