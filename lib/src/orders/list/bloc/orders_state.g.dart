// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersStateImpl _$$OrdersStateImplFromJson(Map<String, dynamic> json) =>
    _$OrdersStateImpl(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool? ?? true,
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.initial,
      exception: json['exception'] == null
          ? null
          : FeeefValidationException.fromJson(
              json['exception'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrdersStateImplToJson(_$OrdersStateImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders?.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'total': instance.total,
      'hasMore': instance.hasMore,
      'status': _$FetchStatusEnumMap[instance.status]!,
      'exception': instance.exception?.toJson(),
    };

const _$FetchStatusEnumMap = {
  FetchStatus.initial: 'initial',
  FetchStatus.loading: 'loading',
  FetchStatus.loaded: 'loaded',
  FetchStatus.error: 'error',
};
