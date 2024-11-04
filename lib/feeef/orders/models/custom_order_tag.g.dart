// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_order_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomOrderTagImpl _$$CustomOrderTagImplFromJson(Map<String, dynamic> json) =>
    _$CustomOrderTagImpl(
      name: json['name'] as String,
      color: const ColorSerializer().fromJson((json['color'] as num).toInt()),
    );

Map<String, dynamic> _$$CustomOrderTagImplToJson(
        _$CustomOrderTagImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': const ColorSerializer().toJson(instance.color),
    };

_$CustomOrderTagHistoryImpl _$$CustomOrderTagHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomOrderTagHistoryImpl(
      tag: CustomOrderTag.fromJson(json['tag'] as Map<String, dynamic>),
      note: json['note'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CustomOrderTagHistoryImplToJson(
        _$CustomOrderTagHistoryImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag.toJson(),
      'note': instance.note,
      'createdAt': instance.createdAt.toIso8601String(),
    };
