// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embadded_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmbaddedCategory _$EmbaddedCategoryFromJson(Map<String, dynamic> json) {
  return _EmbaddedCategory.fromJson(json);
}

/// @nodoc
mixin _$EmbaddedCategory {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get ondarkPhotoUrl => throw _privateConstructorUsedError; // metadata
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this EmbaddedCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbaddedCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbaddedCategoryCopyWith<EmbaddedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbaddedCategoryCopyWith<$Res> {
  factory $EmbaddedCategoryCopyWith(
          EmbaddedCategory value, $Res Function(EmbaddedCategory) then) =
      _$EmbaddedCategoryCopyWithImpl<$Res, EmbaddedCategory>;
  @useResult
  $Res call(
      {String name,
      String? description,
      String? photoUrl,
      String? ondarkPhotoUrl,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$EmbaddedCategoryCopyWithImpl<$Res, $Val extends EmbaddedCategory>
    implements $EmbaddedCategoryCopyWith<$Res> {
  _$EmbaddedCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbaddedCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? ondarkPhotoUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkPhotoUrl: freezed == ondarkPhotoUrl
          ? _value.ondarkPhotoUrl
          : ondarkPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbaddedCategoryImplCopyWith<$Res>
    implements $EmbaddedCategoryCopyWith<$Res> {
  factory _$$EmbaddedCategoryImplCopyWith(_$EmbaddedCategoryImpl value,
          $Res Function(_$EmbaddedCategoryImpl) then) =
      __$$EmbaddedCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String? photoUrl,
      String? ondarkPhotoUrl,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$EmbaddedCategoryImplCopyWithImpl<$Res>
    extends _$EmbaddedCategoryCopyWithImpl<$Res, _$EmbaddedCategoryImpl>
    implements _$$EmbaddedCategoryImplCopyWith<$Res> {
  __$$EmbaddedCategoryImplCopyWithImpl(_$EmbaddedCategoryImpl _value,
      $Res Function(_$EmbaddedCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbaddedCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? ondarkPhotoUrl = freezed,
    Object? metadata = null,
  }) {
    return _then(_$EmbaddedCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkPhotoUrl: freezed == ondarkPhotoUrl
          ? _value.ondarkPhotoUrl
          : ondarkPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbaddedCategoryImpl implements _EmbaddedCategory {
  _$EmbaddedCategoryImpl(
      {required this.name,
      this.description,
      this.photoUrl,
      this.ondarkPhotoUrl,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$EmbaddedCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbaddedCategoryImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String? photoUrl;
  @override
  final String? ondarkPhotoUrl;
// metadata
  final Map<String, dynamic> _metadata;
// metadata
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'EmbaddedCategory(name: $name, description: $description, photoUrl: $photoUrl, ondarkPhotoUrl: $ondarkPhotoUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbaddedCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.ondarkPhotoUrl, ondarkPhotoUrl) ||
                other.ondarkPhotoUrl == ondarkPhotoUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, photoUrl,
      ondarkPhotoUrl, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of EmbaddedCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbaddedCategoryImplCopyWith<_$EmbaddedCategoryImpl> get copyWith =>
      __$$EmbaddedCategoryImplCopyWithImpl<_$EmbaddedCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbaddedCategoryImplToJson(
      this,
    );
  }
}

abstract class _EmbaddedCategory implements EmbaddedCategory {
  factory _EmbaddedCategory(
      {required final String name,
      final String? description,
      final String? photoUrl,
      final String? ondarkPhotoUrl,
      final Map<String, dynamic> metadata}) = _$EmbaddedCategoryImpl;

  factory _EmbaddedCategory.fromJson(Map<String, dynamic> json) =
      _$EmbaddedCategoryImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String? get photoUrl;
  @override
  String? get ondarkPhotoUrl; // metadata
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of EmbaddedCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbaddedCategoryImplCopyWith<_$EmbaddedCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
