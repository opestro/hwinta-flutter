// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeeefValidationException _$FeeefValidationExceptionFromJson(
    Map<String, dynamic> json) {
  return _FeeefValidationException.fromJson(json);
}

/// @nodoc
mixin _$FeeefValidationException {
  List<FeeefViolation> get errors => throw _privateConstructorUsedError;

  /// Serializes this FeeefValidationException to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeeefValidationException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeefValidationExceptionCopyWith<FeeefValidationException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeefValidationExceptionCopyWith<$Res> {
  factory $FeeefValidationExceptionCopyWith(FeeefValidationException value,
          $Res Function(FeeefValidationException) then) =
      _$FeeefValidationExceptionCopyWithImpl<$Res, FeeefValidationException>;
  @useResult
  $Res call({List<FeeefViolation> errors});
}

/// @nodoc
class _$FeeefValidationExceptionCopyWithImpl<$Res,
        $Val extends FeeefValidationException>
    implements $FeeefValidationExceptionCopyWith<$Res> {
  _$FeeefValidationExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeeefValidationException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<FeeefViolation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeefValidationExceptionImplCopyWith<$Res>
    implements $FeeefValidationExceptionCopyWith<$Res> {
  factory _$$FeeefValidationExceptionImplCopyWith(
          _$FeeefValidationExceptionImpl value,
          $Res Function(_$FeeefValidationExceptionImpl) then) =
      __$$FeeefValidationExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FeeefViolation> errors});
}

/// @nodoc
class __$$FeeefValidationExceptionImplCopyWithImpl<$Res>
    extends _$FeeefValidationExceptionCopyWithImpl<$Res,
        _$FeeefValidationExceptionImpl>
    implements _$$FeeefValidationExceptionImplCopyWith<$Res> {
  __$$FeeefValidationExceptionImplCopyWithImpl(
      _$FeeefValidationExceptionImpl _value,
      $Res Function(_$FeeefValidationExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeeefValidationException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$FeeefValidationExceptionImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<FeeefViolation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeefValidationExceptionImpl implements _FeeefValidationException {
  _$FeeefValidationExceptionImpl({required final List<FeeefViolation> errors})
      : _errors = errors;

  factory _$FeeefValidationExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeefValidationExceptionImplFromJson(json);

  final List<FeeefViolation> _errors;
  @override
  List<FeeefViolation> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'FeeefValidationException(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeefValidationExceptionImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of FeeefValidationException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeefValidationExceptionImplCopyWith<_$FeeefValidationExceptionImpl>
      get copyWith => __$$FeeefValidationExceptionImplCopyWithImpl<
          _$FeeefValidationExceptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeefValidationExceptionImplToJson(
      this,
    );
  }
}

abstract class _FeeefValidationException implements FeeefValidationException {
  factory _FeeefValidationException(
          {required final List<FeeefViolation> errors}) =
      _$FeeefValidationExceptionImpl;

  factory _FeeefValidationException.fromJson(Map<String, dynamic> json) =
      _$FeeefValidationExceptionImpl.fromJson;

  @override
  List<FeeefViolation> get errors;

  /// Create a copy of FeeefValidationException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeefValidationExceptionImplCopyWith<_$FeeefValidationExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FeeefViolation _$FeeefViolationFromJson(Map<String, dynamic> json) {
  return _FeeefViolation.fromJson(json);
}

/// @nodoc
mixin _$FeeefViolation {
  String get message => throw _privateConstructorUsedError;
  String? get rule => throw _privateConstructorUsedError;
  String? get field => throw _privateConstructorUsedError;

  /// Serializes this FeeefViolation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeeefViolation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeefViolationCopyWith<FeeefViolation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeefViolationCopyWith<$Res> {
  factory $FeeefViolationCopyWith(
          FeeefViolation value, $Res Function(FeeefViolation) then) =
      _$FeeefViolationCopyWithImpl<$Res, FeeefViolation>;
  @useResult
  $Res call({String message, String? rule, String? field});
}

/// @nodoc
class _$FeeefViolationCopyWithImpl<$Res, $Val extends FeeefViolation>
    implements $FeeefViolationCopyWith<$Res> {
  _$FeeefViolationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeeefViolation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? rule = freezed,
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeefViolationImplCopyWith<$Res>
    implements $FeeefViolationCopyWith<$Res> {
  factory _$$FeeefViolationImplCopyWith(_$FeeefViolationImpl value,
          $Res Function(_$FeeefViolationImpl) then) =
      __$$FeeefViolationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? rule, String? field});
}

/// @nodoc
class __$$FeeefViolationImplCopyWithImpl<$Res>
    extends _$FeeefViolationCopyWithImpl<$Res, _$FeeefViolationImpl>
    implements _$$FeeefViolationImplCopyWith<$Res> {
  __$$FeeefViolationImplCopyWithImpl(
      _$FeeefViolationImpl _value, $Res Function(_$FeeefViolationImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeeefViolation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? rule = freezed,
    Object? field = freezed,
  }) {
    return _then(_$FeeefViolationImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeefViolationImpl implements _FeeefViolation {
  _$FeeefViolationImpl({required this.message, this.rule, this.field});

  factory _$FeeefViolationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeefViolationImplFromJson(json);

  @override
  final String message;
  @override
  final String? rule;
  @override
  final String? field;

  @override
  String toString() {
    return 'FeeefViolation(message: $message, rule: $rule, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeefViolationImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.field, field) || other.field == field));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, rule, field);

  /// Create a copy of FeeefViolation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeefViolationImplCopyWith<_$FeeefViolationImpl> get copyWith =>
      __$$FeeefViolationImplCopyWithImpl<_$FeeefViolationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeefViolationImplToJson(
      this,
    );
  }
}

abstract class _FeeefViolation implements FeeefViolation {
  factory _FeeefViolation(
      {required final String message,
      final String? rule,
      final String? field}) = _$FeeefViolationImpl;

  factory _FeeefViolation.fromJson(Map<String, dynamic> json) =
      _$FeeefViolationImpl.fromJson;

  @override
  String get message;
  @override
  String? get rule;
  @override
  String? get field;

  /// Create a copy of FeeefViolation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeefViolationImplCopyWith<_$FeeefViolationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
