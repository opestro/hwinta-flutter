import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_exception.freezed.dart';
part 'validation_exception.g.dart';

@freezed
class FeeefValidationException with _$FeeefValidationException implements Exception {
  factory FeeefValidationException({
    required List<FeeefViolation> errors,
  }) = _FeeefValidationException;

  factory FeeefValidationException.fromJson(Map<String, dynamic> json) => _$FeeefValidationExceptionFromJson(json);
}

@freezed
class FeeefViolation with _$FeeefViolation {
  factory FeeefViolation({
    required String message,
    String? rule,
    String? field,
  }) = _FeeefViolation;

  factory FeeefViolation.fromJson(Map<String, dynamic> json) => _$FeeefViolationFromJson(json);
}

// getField extention
extension GetField on FeeefValidationException {
  FeeefViolation? getField(String field) {
    return errors.where((e) => e.field == field).firstOrNull;
  }

  String? getFieldMessage(String field) {
    return errors.where((e) => e.field == field).firstOrNull?.message;
  }

  // messages
  List<String> get messages => errors.map((e) => e.message).toList();
}
