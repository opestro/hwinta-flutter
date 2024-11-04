// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthTokenImpl _$$AuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenImpl(
      type: json['type'] as String,
      name: json['name'] as String?,
      token: json['token'] as String?,
      abilities:
          (json['abilities'] as List<dynamic>).map((e) => e as String).toList(),
      lastUsedAt: json['lastUsedAt'] == null
          ? null
          : DateTime.parse(json['lastUsedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$AuthTokenImplToJson(_$AuthTokenImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'token': instance.token,
      'abilities': instance.abilities,
      'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

_$AccessTokenImpl _$$AccessTokenImplFromJson(Map<String, dynamic> json) =>
    _$AccessTokenImpl(
      identifier: json['identifier'],
      tokenableId: json['tokenableId'],
      value: json['value'],
      name: json['name'] as String?,
      type: json['type'] as String,
      abilities:
          (json['abilities'] as List<dynamic>).map((e) => e as String).toList(),
      hash: json['hash'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      lastUsedAt: json['lastUsedAt'] == null
          ? null
          : DateTime.parse(json['lastUsedAt'] as String),
    );

Map<String, dynamic> _$$AccessTokenImplToJson(_$AccessTokenImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'tokenableId': instance.tokenableId,
      'value': instance.value,
      'name': instance.name,
      'type': instance.type,
      'abilities': instance.abilities,
      'hash': instance.hash,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'lastUsedAt': instance.lastUsedAt?.toIso8601String(),
    };
