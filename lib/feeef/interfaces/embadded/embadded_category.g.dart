// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embadded_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmbaddedCategoryImpl _$$EmbaddedCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbaddedCategoryImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      ondarkPhotoUrl: json['ondarkPhotoUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$EmbaddedCategoryImplToJson(
        _$EmbaddedCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'ondarkPhotoUrl': instance.ondarkPhotoUrl,
      'metadata': instance.metadata,
    };
