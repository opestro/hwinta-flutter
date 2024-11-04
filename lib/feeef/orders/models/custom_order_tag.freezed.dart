// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_order_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomOrderTag _$CustomOrderTagFromJson(Map<String, dynamic> json) {
  return _CustomOrderTag.fromJson(json);
}

/// @nodoc
mixin _$CustomOrderTag {
  String get name => throw _privateConstructorUsedError;
  @ColorSerializer()
  Color get color => throw _privateConstructorUsedError;

  /// Serializes this CustomOrderTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomOrderTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomOrderTagCopyWith<CustomOrderTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomOrderTagCopyWith<$Res> {
  factory $CustomOrderTagCopyWith(
          CustomOrderTag value, $Res Function(CustomOrderTag) then) =
      _$CustomOrderTagCopyWithImpl<$Res, CustomOrderTag>;
  @useResult
  $Res call({String name, @ColorSerializer() Color color});
}

/// @nodoc
class _$CustomOrderTagCopyWithImpl<$Res, $Val extends CustomOrderTag>
    implements $CustomOrderTagCopyWith<$Res> {
  _$CustomOrderTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomOrderTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomOrderTagImplCopyWith<$Res>
    implements $CustomOrderTagCopyWith<$Res> {
  factory _$$CustomOrderTagImplCopyWith(_$CustomOrderTagImpl value,
          $Res Function(_$CustomOrderTagImpl) then) =
      __$$CustomOrderTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @ColorSerializer() Color color});
}

/// @nodoc
class __$$CustomOrderTagImplCopyWithImpl<$Res>
    extends _$CustomOrderTagCopyWithImpl<$Res, _$CustomOrderTagImpl>
    implements _$$CustomOrderTagImplCopyWith<$Res> {
  __$$CustomOrderTagImplCopyWithImpl(
      _$CustomOrderTagImpl _value, $Res Function(_$CustomOrderTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomOrderTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$CustomOrderTagImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomOrderTagImpl implements _CustomOrderTag {
  _$CustomOrderTagImpl(
      {required this.name, @ColorSerializer() required this.color});

  factory _$CustomOrderTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomOrderTagImplFromJson(json);

  @override
  final String name;
  @override
  @ColorSerializer()
  final Color color;

  @override
  String toString() {
    return 'CustomOrderTag(name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomOrderTagImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, color);

  /// Create a copy of CustomOrderTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomOrderTagImplCopyWith<_$CustomOrderTagImpl> get copyWith =>
      __$$CustomOrderTagImplCopyWithImpl<_$CustomOrderTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomOrderTagImplToJson(
      this,
    );
  }
}

abstract class _CustomOrderTag implements CustomOrderTag {
  factory _CustomOrderTag(
      {required final String name,
      @ColorSerializer() required final Color color}) = _$CustomOrderTagImpl;

  factory _CustomOrderTag.fromJson(Map<String, dynamic> json) =
      _$CustomOrderTagImpl.fromJson;

  @override
  String get name;
  @override
  @ColorSerializer()
  Color get color;

  /// Create a copy of CustomOrderTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomOrderTagImplCopyWith<_$CustomOrderTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomOrderTagHistory _$CustomOrderTagHistoryFromJson(
    Map<String, dynamic> json) {
  return _CustomOrderTagHistory.fromJson(json);
}

/// @nodoc
mixin _$CustomOrderTagHistory {
  CustomOrderTag get tag => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CustomOrderTagHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomOrderTagHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomOrderTagHistoryCopyWith<CustomOrderTagHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomOrderTagHistoryCopyWith<$Res> {
  factory $CustomOrderTagHistoryCopyWith(CustomOrderTagHistory value,
          $Res Function(CustomOrderTagHistory) then) =
      _$CustomOrderTagHistoryCopyWithImpl<$Res, CustomOrderTagHistory>;
  @useResult
  $Res call({CustomOrderTag tag, String? note, DateTime createdAt});

  $CustomOrderTagCopyWith<$Res> get tag;
}

/// @nodoc
class _$CustomOrderTagHistoryCopyWithImpl<$Res,
        $Val extends CustomOrderTagHistory>
    implements $CustomOrderTagHistoryCopyWith<$Res> {
  _$CustomOrderTagHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomOrderTagHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as CustomOrderTag,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of CustomOrderTagHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomOrderTagCopyWith<$Res> get tag {
    return $CustomOrderTagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomOrderTagHistoryImplCopyWith<$Res>
    implements $CustomOrderTagHistoryCopyWith<$Res> {
  factory _$$CustomOrderTagHistoryImplCopyWith(
          _$CustomOrderTagHistoryImpl value,
          $Res Function(_$CustomOrderTagHistoryImpl) then) =
      __$$CustomOrderTagHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomOrderTag tag, String? note, DateTime createdAt});

  @override
  $CustomOrderTagCopyWith<$Res> get tag;
}

/// @nodoc
class __$$CustomOrderTagHistoryImplCopyWithImpl<$Res>
    extends _$CustomOrderTagHistoryCopyWithImpl<$Res,
        _$CustomOrderTagHistoryImpl>
    implements _$$CustomOrderTagHistoryImplCopyWith<$Res> {
  __$$CustomOrderTagHistoryImplCopyWithImpl(_$CustomOrderTagHistoryImpl _value,
      $Res Function(_$CustomOrderTagHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomOrderTagHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$CustomOrderTagHistoryImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as CustomOrderTag,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomOrderTagHistoryImpl implements _CustomOrderTagHistory {
  _$CustomOrderTagHistoryImpl(
      {required this.tag, this.note, required this.createdAt});

  factory _$CustomOrderTagHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomOrderTagHistoryImplFromJson(json);

  @override
  final CustomOrderTag tag;
  @override
  final String? note;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CustomOrderTagHistory(tag: $tag, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomOrderTagHistoryImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tag, note, createdAt);

  /// Create a copy of CustomOrderTagHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomOrderTagHistoryImplCopyWith<_$CustomOrderTagHistoryImpl>
      get copyWith => __$$CustomOrderTagHistoryImplCopyWithImpl<
          _$CustomOrderTagHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomOrderTagHistoryImplToJson(
      this,
    );
  }
}

abstract class _CustomOrderTagHistory implements CustomOrderTagHistory {
  factory _CustomOrderTagHistory(
      {required final CustomOrderTag tag,
      final String? note,
      required final DateTime createdAt}) = _$CustomOrderTagHistoryImpl;

  factory _CustomOrderTagHistory.fromJson(Map<String, dynamic> json) =
      _$CustomOrderTagHistoryImpl.fromJson;

  @override
  CustomOrderTag get tag;
  @override
  String? get note;
  @override
  DateTime get createdAt;

  /// Create a copy of CustomOrderTagHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomOrderTagHistoryImplCopyWith<_$CustomOrderTagHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
