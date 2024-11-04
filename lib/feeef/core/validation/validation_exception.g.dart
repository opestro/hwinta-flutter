// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeeefValidationExceptionImpl _$$FeeefValidationExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$FeeefValidationExceptionImpl(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => FeeefViolation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeeefValidationExceptionImplToJson(
        _$FeeefValidationExceptionImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors.map((e) => e.toJson()).toList(),
    };

_$FeeefViolationImpl _$$FeeefViolationImplFromJson(Map<String, dynamic> json) =>
    _$FeeefViolationImpl(
      message: json['message'] as String,
      rule: json['rule'] as String?,
      field: json['field'] as String?,
    );

Map<String, dynamic> _$$FeeefViolationImplToJson(
        _$FeeefViolationImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'rule': instance.rule,
      'field': instance.field,
    };
