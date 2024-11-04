import 'package:feeef_marchant/feeef/interfaces/embadded/embadded_category.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../interfaces/embadded/store.dart';
import '../../interfaces/embadded/store_integrations.dart';
import '../../interfaces/helpers.dart';
import '../../interfaces/store.dart';

part 'store.freezed.dart';
part 'store.g.dart';



  // // subscription
  // subscriptio?: any
  // due?: number

  // // StoreConfigs
  // configs?: StoreConfigs
@freezed
class Store extends StoreEntity with _$Store implements Model, ModelMetadata {
  factory Store({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String slug,
    StoreBanner? banner,
    StoreAction? action,
    StoreDomain? domain,
    StoreDecoration? decoration,
    required String name,
    String? logoUrl,
    String? ondarkLogoUrl,
    required String userId,
    @Default([]) List<EmbaddedCategory> categories,
    String? title,
    String? description,
    @Default([]) List<EmbaddedAddress> addresses,
    @Default({}) Map<String, dynamic> metadata,
    @Default([]) List<EmbaddedContact> contacts,
    @Default(const StoreIntegrations()) StoreIntegrations integrations,
    @Default([]) List<List<num?>?> defaultShippingRates,
    DateTime? verifiedAt,
    DateTime? blockedAt,
    // subscription
    StoreSubscription? subscription,
    num? due,
    // StoreConfigs
    StoreConfigs? configs,
    // metaPixelIds
    List<String>? metaPixelIds,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

// StoreCreate
@freezed
class StoreCreate with _$StoreCreate implements ModelCreate {
  const factory StoreCreate({
    String? id,
    required String name,
    required String slug,
    StoreBanner? banner,
    StoreAction? action,
    StoreDomain? domain,
    StoreDecoration? decoration,
    String? logoUrl,
    String? ondarkLogoUrl,
    @Default([]) List<EmbaddedCategory> categories,
    String? title,
    String? description,
    @Default([]) List<EmbaddedAddress> addresses,
    @Default({}) Map<String, dynamic> metadata,
    @Default([]) List<EmbaddedContact> contacts,
    @Default(const StoreIntegrations()) StoreIntegrations integrations,
    @Default([]) List<List<num?>?> defaultShippingRates,
    // subscription
    StoreSubscription? subscription,
    num? due,
  }) = _StoreCreate;

  factory StoreCreate.fromJson(Map<String, dynamic> json) => _$StoreCreateFromJson(json);
}

// StoreUpdate
@freezed
class StoreUpdate with _$StoreUpdate implements ModelUpdate {
  const factory StoreUpdate({
    String? name,
    String? slug,
    StoreBanner? banner,
    StoreAction? action,
    StoreDomain? domain,
    StoreDecoration? decoration,
    String? logoUrl,
    String? ondarkLogoUrl,
    List<EmbaddedCategory>? categories,
    String? title,
    String? description,
    List<EmbaddedAddress>? addresses,
    Map<String, dynamic>? metadata,
    List<EmbaddedContact>? contacts,
    StoreIntegrations? integrations,
    List<List<num?>?>? defaultShippingRates,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false) @Default([]) List<String> setToNull,
    // subscription
    StoreSubscription? subscription,
    num? due,
    // StoreConfigs
    StoreConfigs? configs,
  }) = _StoreUpdate; 

  factory StoreUpdate.fromJson(Map<String, dynamic> json) => _$StoreUpdateFromJson(json);
}



extension StoreExtensions on Store {
  String getPublicUrl({bool ignoreDomain = false, String path = ""}) {
    var url = "https://";
    if (!ignoreDomain && domain?.name.nullIfEmpty != null && domain!.verifiedAt != null){
      url = "$url${domain!.name}";
    } else {
      // Assuming the Store class has a property `id` or `slug` to generate the public URL
      // Replace `id` with the appropriate property if necessary
      url = "$url${this.slug}.feeef.shop";
    }
    return url+path;
  }
}




// export enum StoreSubscriptionType {
//   free = 'free',
//   quota = 'quota',
//   percentage = 'percentage',
// }

// export interface StoreSubscription {
//   type: StoreSubscriptionType
//   status: StoreSubscriptionStatus
//   startedAt: DateTime
//   expiresAt: DateTime | null
//   metadata: Record<string, any>
// }

///
/// StoreSubscription
/// 
@freezed
class StoreSubscription with _$StoreSubscription {
  const factory StoreSubscription({
    required StoreSubscriptionType type,
    required StoreSubscriptionStatus status,
    required DateTime startedAt,
    DateTime? expiresAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreSubscription;

  factory StoreSubscription.fromJson(Map<String, dynamic> json) => _$StoreSubscriptionFromJson(json);
}

enum StoreSubscriptionType {
  free,
  quota,
  percentage,
}

enum StoreSubscriptionStatus {
  active,
  inactive,
  expired,
  canceled,
}

// export interface StoreConfigs {
//   currencies: StoreCurrencyConfig[]
//   defaultCurrency: number
// }

// export interface StoreCurrencyConfig {
//   code: string
//   symbol: string
//   precision: number
//   rate: number
// }

///
/// StoreConfigs
/// 
@freezed
class StoreConfigs with _$StoreConfigs {
  const factory StoreConfigs({
    required List<StoreCurrencyConfig> currencies,
    required int defaultCurrency,
  }) = _StoreConfigs;

  factory StoreConfigs.fromJson(Map<String, dynamic> json) => _$StoreConfigsFromJson(json);
}

///
/// StoreCurrencyConfig
///
@freezed
class StoreCurrencyConfig with _$StoreCurrencyConfig {
  const factory StoreCurrencyConfig({
    required String code,
    required String symbol,
    required int precision,
    required num rate,
  }) = _StoreCurrencyConfig;

  factory StoreCurrencyConfig.fromJson(Map<String, dynamic> json) => _$StoreCurrencyConfigFromJson(json);
}

