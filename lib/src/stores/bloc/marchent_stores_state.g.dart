// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marchent_stores_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarchentStoresStateImpl _$$MarchentStoresStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MarchentStoresStateImpl(
      status:
          $enumDecodeNullable(_$MarchentStoresStatusEnumMap, json['status']) ??
              MarchentStoresStatus.initial,
      stores: (json['stores'] as List<dynamic>?)
              ?.map((e) => Store.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
      summary: json['summary'] == null
          ? null
          : StoreSummary.fromJson(json['summary'] as Map<String, dynamic>),
      shippingMethods: (json['shippingMethods'] as List<dynamic>?)
          ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : FeeefValidationException.fromJson(
              json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarchentStoresStateImplToJson(
        _$MarchentStoresStateImpl instance) =>
    <String, dynamic>{
      'status': _$MarchentStoresStatusEnumMap[instance.status]!,
      'stores': instance.stores.map((e) => e.toJson()).toList(),
      'store': instance.store?.toJson(),
      'summary': instance.summary?.toJson(),
      'shippingMethods':
          instance.shippingMethods?.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
    };

const _$MarchentStoresStatusEnumMap = {
  MarchentStoresStatus.initial: 'initial',
  MarchentStoresStatus.loading: 'loading',
  MarchentStoresStatus.loaded: 'loaded',
  MarchentStoresStatus.loadError: 'loadError',
  MarchentStoresStatus.finding: 'finding',
  MarchentStoresStatus.found: 'found',
  MarchentStoresStatus.findError: 'findError',
  MarchentStoresStatus.creating: 'creating',
  MarchentStoresStatus.created: 'created',
  MarchentStoresStatus.createError: 'createError',
  MarchentStoresStatus.updating: 'updating',
  MarchentStoresStatus.updated: 'updated',
  MarchentStoresStatus.updateError: 'updateError',
  MarchentStoresStatus.loadingProducts: 'loadingProducts',
  MarchentStoresStatus.loadedProducts: 'loadedProducts',
  MarchentStoresStatus.loadProductsError: 'loadProductsError',
};
