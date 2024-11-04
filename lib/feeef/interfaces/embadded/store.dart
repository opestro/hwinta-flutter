import 'package:feeef_marchant/feeef/serializers.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class StoreDomain with _$StoreDomain {
  factory StoreDomain({
    required String name,
    DateTime? verifiedAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreDomain;

  factory StoreDomain.fromJson(Map<String, dynamic> json) => _$StoreDomainFromJson(json);
}

// StoreBanner
@freezed
class StoreBanner with _$StoreBanner {
  factory StoreBanner({
    required String title,
    String? url,
    @Default(false) bool enabled,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreBanner;

  factory StoreBanner.fromJson(Map<String, dynamic> json) => _$StoreBannerFromJson(json);
}

// export interface StoreDecoration {
//   primaryColor: number
//   showStoreLogoInHeader?: boolean
//   logoFullHeight?: boolean
//   showStoreNameInHeader?: boolean
//   metadata?: Record<string, any>
// }
@freezed
class StoreDecoration with _$StoreDecoration {
  factory StoreDecoration({
    @ColorSerializer() @Default(Colors.green) Color primary,
    @ColorSerializer() @Default(Colors.white) Color onPrimary,
    bool? showStoreLogoInHeader,
    bool? logoFullHeight,
    bool? showStoreNameInHeader,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreDecoration;

  factory StoreDecoration.fromJson(Map<String, dynamic> json) => _$StoreDecorationFromJson(json);
}

// export interface StoreAction {
//   label: string
//   url: string
//   type: StoreActionType
// }
@freezed
class StoreAction with _$StoreAction {
  factory StoreAction({
    required String label,
    required String url,
    required StoreActionType type,
  }) = _StoreAction;

  factory StoreAction.fromJson(Map<String, dynamic> json) => _$StoreActionFromJson(json);
}

enum StoreActionType {
  link,
  whatsapp,
  telegram,
  phone,
}

// export interface EmbaddedAddress {
//   city: string
//   state: string
//   country?: string
//   street?: string
//   zip?: string
//   location?: {
//     geohash?: string
//     lat: number
//     long: number
//   }
//   metadata?: Record<string, any>
// }
@freezed
class EmbaddedAddress with _$EmbaddedAddress {
  factory EmbaddedAddress({
    String? city,
    String? state,
    String? country,
    String? street,
    String? zip,
    EmbaddedLocation? location,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EmbaddedAddress;

  factory EmbaddedAddress.fromJson(Map<String, dynamic> json) => _$EmbaddedAddressFromJson(json);
}

@freezed
class EmbaddedLocation with _$EmbaddedLocation {
  factory EmbaddedLocation({
    String? geohash,
    required double lat,
    required double long,
  }) = _EmbaddedLocation;

  factory EmbaddedLocation.fromJson(Map<String, dynamic> json) => _$EmbaddedLocationFromJson(json);
}

enum EmbaddedContactType {
  phone,
  email,
  facebook,
  twitter,
  instagram,
  linkedin,
  website,
  whatsapp,
  telegram,
  signal,
  viber,
  skype,
  zoom,
  other,
}

@freezed
class EmbaddedContact with _$EmbaddedContact {
  factory EmbaddedContact({
    String? name,
    required EmbaddedContactType type,
    required String value,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EmbaddedContact;

  factory EmbaddedContact.fromJson(Map<String, dynamic> json) => _$EmbaddedContactFromJson(json);
}
