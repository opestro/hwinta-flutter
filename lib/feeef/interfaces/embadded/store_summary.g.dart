// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreSummaryImpl _$$StoreSummaryImplFromJson(Map<String, dynamic> json) =>
    _$StoreSummaryImpl(
      orders:
          StoreOrdersSummary.fromJson(json['orders'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StoreSummaryImplToJson(_$StoreSummaryImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders.toJson(),
    };

_$StoreOrdersSummaryImpl _$$StoreOrdersSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreOrdersSummaryImpl(
      total: (json['total'] as num).toInt(),
      draft: (json['draft'] as num).toInt(),
      pending: (json['pending'] as num).toInt(),
      processing: (json['processing'] as num).toInt(),
      completed: (json['completed'] as num).toInt(),
      cancelled: (json['cancelled'] as num).toInt(),
    );

Map<String, dynamic> _$$StoreOrdersSummaryImplToJson(
        _$StoreOrdersSummaryImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'draft': instance.draft,
      'pending': instance.pending,
      'processing': instance.processing,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
    };
