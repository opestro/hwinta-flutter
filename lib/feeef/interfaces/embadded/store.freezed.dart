// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreDomain _$StoreDomainFromJson(Map<String, dynamic> json) {
  return _StoreDomain.fromJson(json);
}

/// @nodoc
mixin _$StoreDomain {
  String get name => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this StoreDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDomainCopyWith<StoreDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDomainCopyWith<$Res> {
  factory $StoreDomainCopyWith(
          StoreDomain value, $Res Function(StoreDomain) then) =
      _$StoreDomainCopyWithImpl<$Res, StoreDomain>;
  @useResult
  $Res call({String name, DateTime? verifiedAt, Map<String, dynamic> metadata});
}

/// @nodoc
class _$StoreDomainCopyWithImpl<$Res, $Val extends StoreDomain>
    implements $StoreDomainCopyWith<$Res> {
  _$StoreDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? verifiedAt = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDomainImplCopyWith<$Res>
    implements $StoreDomainCopyWith<$Res> {
  factory _$$StoreDomainImplCopyWith(
          _$StoreDomainImpl value, $Res Function(_$StoreDomainImpl) then) =
      __$$StoreDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime? verifiedAt, Map<String, dynamic> metadata});
}

/// @nodoc
class __$$StoreDomainImplCopyWithImpl<$Res>
    extends _$StoreDomainCopyWithImpl<$Res, _$StoreDomainImpl>
    implements _$$StoreDomainImplCopyWith<$Res> {
  __$$StoreDomainImplCopyWithImpl(
      _$StoreDomainImpl _value, $Res Function(_$StoreDomainImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? verifiedAt = freezed,
    Object? metadata = null,
  }) {
    return _then(_$StoreDomainImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDomainImpl implements _StoreDomain {
  _$StoreDomainImpl(
      {required this.name,
      this.verifiedAt,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$StoreDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDomainImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime? verifiedAt;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'StoreDomain(name: $name, verifiedAt: $verifiedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDomainImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, verifiedAt,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of StoreDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDomainImplCopyWith<_$StoreDomainImpl> get copyWith =>
      __$$StoreDomainImplCopyWithImpl<_$StoreDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDomainImplToJson(
      this,
    );
  }
}

abstract class _StoreDomain implements StoreDomain {
  factory _StoreDomain(
      {required final String name,
      final DateTime? verifiedAt,
      final Map<String, dynamic> metadata}) = _$StoreDomainImpl;

  factory _StoreDomain.fromJson(Map<String, dynamic> json) =
      _$StoreDomainImpl.fromJson;

  @override
  String get name;
  @override
  DateTime? get verifiedAt;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of StoreDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDomainImplCopyWith<_$StoreDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreBanner _$StoreBannerFromJson(Map<String, dynamic> json) {
  return _StoreBanner.fromJson(json);
}

/// @nodoc
mixin _$StoreBanner {
  String get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this StoreBanner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreBannerCopyWith<StoreBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBannerCopyWith<$Res> {
  factory $StoreBannerCopyWith(
          StoreBanner value, $Res Function(StoreBanner) then) =
      _$StoreBannerCopyWithImpl<$Res, StoreBanner>;
  @useResult
  $Res call(
      {String title, String? url, bool enabled, Map<String, dynamic> metadata});
}

/// @nodoc
class _$StoreBannerCopyWithImpl<$Res, $Val extends StoreBanner>
    implements $StoreBannerCopyWith<$Res> {
  _$StoreBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = freezed,
    Object? enabled = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreBannerImplCopyWith<$Res>
    implements $StoreBannerCopyWith<$Res> {
  factory _$$StoreBannerImplCopyWith(
          _$StoreBannerImpl value, $Res Function(_$StoreBannerImpl) then) =
      __$$StoreBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String? url, bool enabled, Map<String, dynamic> metadata});
}

/// @nodoc
class __$$StoreBannerImplCopyWithImpl<$Res>
    extends _$StoreBannerCopyWithImpl<$Res, _$StoreBannerImpl>
    implements _$$StoreBannerImplCopyWith<$Res> {
  __$$StoreBannerImplCopyWithImpl(
      _$StoreBannerImpl _value, $Res Function(_$StoreBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = freezed,
    Object? enabled = null,
    Object? metadata = null,
  }) {
    return _then(_$StoreBannerImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreBannerImpl implements _StoreBanner {
  _$StoreBannerImpl(
      {required this.title,
      this.url,
      this.enabled = false,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$StoreBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreBannerImplFromJson(json);

  @override
  final String title;
  @override
  final String? url;
  @override
  @JsonKey()
  final bool enabled;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'StoreBanner(title: $title, url: $url, enabled: $enabled, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBannerImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, url, enabled,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of StoreBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBannerImplCopyWith<_$StoreBannerImpl> get copyWith =>
      __$$StoreBannerImplCopyWithImpl<_$StoreBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreBannerImplToJson(
      this,
    );
  }
}

abstract class _StoreBanner implements StoreBanner {
  factory _StoreBanner(
      {required final String title,
      final String? url,
      final bool enabled,
      final Map<String, dynamic> metadata}) = _$StoreBannerImpl;

  factory _StoreBanner.fromJson(Map<String, dynamic> json) =
      _$StoreBannerImpl.fromJson;

  @override
  String get title;
  @override
  String? get url;
  @override
  bool get enabled;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of StoreBanner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreBannerImplCopyWith<_$StoreBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDecoration _$StoreDecorationFromJson(Map<String, dynamic> json) {
  return _StoreDecoration.fromJson(json);
}

/// @nodoc
mixin _$StoreDecoration {
  @ColorSerializer()
  Color get primary => throw _privateConstructorUsedError;
  @ColorSerializer()
  Color get onPrimary => throw _privateConstructorUsedError;
  bool? get showStoreLogoInHeader => throw _privateConstructorUsedError;
  bool? get logoFullHeight => throw _privateConstructorUsedError;
  bool? get showStoreNameInHeader => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this StoreDecoration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDecorationCopyWith<StoreDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDecorationCopyWith<$Res> {
  factory $StoreDecorationCopyWith(
          StoreDecoration value, $Res Function(StoreDecoration) then) =
      _$StoreDecorationCopyWithImpl<$Res, StoreDecoration>;
  @useResult
  $Res call(
      {@ColorSerializer() Color primary,
      @ColorSerializer() Color onPrimary,
      bool? showStoreLogoInHeader,
      bool? logoFullHeight,
      bool? showStoreNameInHeader,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$StoreDecorationCopyWithImpl<$Res, $Val extends StoreDecoration>
    implements $StoreDecorationCopyWith<$Res> {
  _$StoreDecorationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? onPrimary = null,
    Object? showStoreLogoInHeader = freezed,
    Object? logoFullHeight = freezed,
    Object? showStoreNameInHeader = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      onPrimary: null == onPrimary
          ? _value.onPrimary
          : onPrimary // ignore: cast_nullable_to_non_nullable
              as Color,
      showStoreLogoInHeader: freezed == showStoreLogoInHeader
          ? _value.showStoreLogoInHeader
          : showStoreLogoInHeader // ignore: cast_nullable_to_non_nullable
              as bool?,
      logoFullHeight: freezed == logoFullHeight
          ? _value.logoFullHeight
          : logoFullHeight // ignore: cast_nullable_to_non_nullable
              as bool?,
      showStoreNameInHeader: freezed == showStoreNameInHeader
          ? _value.showStoreNameInHeader
          : showStoreNameInHeader // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDecorationImplCopyWith<$Res>
    implements $StoreDecorationCopyWith<$Res> {
  factory _$$StoreDecorationImplCopyWith(_$StoreDecorationImpl value,
          $Res Function(_$StoreDecorationImpl) then) =
      __$$StoreDecorationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ColorSerializer() Color primary,
      @ColorSerializer() Color onPrimary,
      bool? showStoreLogoInHeader,
      bool? logoFullHeight,
      bool? showStoreNameInHeader,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$StoreDecorationImplCopyWithImpl<$Res>
    extends _$StoreDecorationCopyWithImpl<$Res, _$StoreDecorationImpl>
    implements _$$StoreDecorationImplCopyWith<$Res> {
  __$$StoreDecorationImplCopyWithImpl(
      _$StoreDecorationImpl _value, $Res Function(_$StoreDecorationImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? onPrimary = null,
    Object? showStoreLogoInHeader = freezed,
    Object? logoFullHeight = freezed,
    Object? showStoreNameInHeader = freezed,
    Object? metadata = null,
  }) {
    return _then(_$StoreDecorationImpl(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      onPrimary: null == onPrimary
          ? _value.onPrimary
          : onPrimary // ignore: cast_nullable_to_non_nullable
              as Color,
      showStoreLogoInHeader: freezed == showStoreLogoInHeader
          ? _value.showStoreLogoInHeader
          : showStoreLogoInHeader // ignore: cast_nullable_to_non_nullable
              as bool?,
      logoFullHeight: freezed == logoFullHeight
          ? _value.logoFullHeight
          : logoFullHeight // ignore: cast_nullable_to_non_nullable
              as bool?,
      showStoreNameInHeader: freezed == showStoreNameInHeader
          ? _value.showStoreNameInHeader
          : showStoreNameInHeader // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDecorationImpl implements _StoreDecoration {
  _$StoreDecorationImpl(
      {@ColorSerializer() this.primary = Colors.green,
      @ColorSerializer() this.onPrimary = Colors.white,
      this.showStoreLogoInHeader,
      this.logoFullHeight,
      this.showStoreNameInHeader,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$StoreDecorationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDecorationImplFromJson(json);

  @override
  @JsonKey()
  @ColorSerializer()
  final Color primary;
  @override
  @JsonKey()
  @ColorSerializer()
  final Color onPrimary;
  @override
  final bool? showStoreLogoInHeader;
  @override
  final bool? logoFullHeight;
  @override
  final bool? showStoreNameInHeader;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'StoreDecoration(primary: $primary, onPrimary: $onPrimary, showStoreLogoInHeader: $showStoreLogoInHeader, logoFullHeight: $logoFullHeight, showStoreNameInHeader: $showStoreNameInHeader, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDecorationImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.onPrimary, onPrimary) ||
                other.onPrimary == onPrimary) &&
            (identical(other.showStoreLogoInHeader, showStoreLogoInHeader) ||
                other.showStoreLogoInHeader == showStoreLogoInHeader) &&
            (identical(other.logoFullHeight, logoFullHeight) ||
                other.logoFullHeight == logoFullHeight) &&
            (identical(other.showStoreNameInHeader, showStoreNameInHeader) ||
                other.showStoreNameInHeader == showStoreNameInHeader) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      primary,
      onPrimary,
      showStoreLogoInHeader,
      logoFullHeight,
      showStoreNameInHeader,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of StoreDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDecorationImplCopyWith<_$StoreDecorationImpl> get copyWith =>
      __$$StoreDecorationImplCopyWithImpl<_$StoreDecorationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDecorationImplToJson(
      this,
    );
  }
}

abstract class _StoreDecoration implements StoreDecoration {
  factory _StoreDecoration(
      {@ColorSerializer() final Color primary,
      @ColorSerializer() final Color onPrimary,
      final bool? showStoreLogoInHeader,
      final bool? logoFullHeight,
      final bool? showStoreNameInHeader,
      final Map<String, dynamic> metadata}) = _$StoreDecorationImpl;

  factory _StoreDecoration.fromJson(Map<String, dynamic> json) =
      _$StoreDecorationImpl.fromJson;

  @override
  @ColorSerializer()
  Color get primary;
  @override
  @ColorSerializer()
  Color get onPrimary;
  @override
  bool? get showStoreLogoInHeader;
  @override
  bool? get logoFullHeight;
  @override
  bool? get showStoreNameInHeader;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of StoreDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDecorationImplCopyWith<_$StoreDecorationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreAction _$StoreActionFromJson(Map<String, dynamic> json) {
  return _StoreAction.fromJson(json);
}

/// @nodoc
mixin _$StoreAction {
  String get label => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  StoreActionType get type => throw _privateConstructorUsedError;

  /// Serializes this StoreAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreActionCopyWith<StoreAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreActionCopyWith<$Res> {
  factory $StoreActionCopyWith(
          StoreAction value, $Res Function(StoreAction) then) =
      _$StoreActionCopyWithImpl<$Res, StoreAction>;
  @useResult
  $Res call({String label, String url, StoreActionType type});
}

/// @nodoc
class _$StoreActionCopyWithImpl<$Res, $Val extends StoreAction>
    implements $StoreActionCopyWith<$Res> {
  _$StoreActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoreActionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreActionImplCopyWith<$Res>
    implements $StoreActionCopyWith<$Res> {
  factory _$$StoreActionImplCopyWith(
          _$StoreActionImpl value, $Res Function(_$StoreActionImpl) then) =
      __$$StoreActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String url, StoreActionType type});
}

/// @nodoc
class __$$StoreActionImplCopyWithImpl<$Res>
    extends _$StoreActionCopyWithImpl<$Res, _$StoreActionImpl>
    implements _$$StoreActionImplCopyWith<$Res> {
  __$$StoreActionImplCopyWithImpl(
      _$StoreActionImpl _value, $Res Function(_$StoreActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$StoreActionImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoreActionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreActionImpl implements _StoreAction {
  _$StoreActionImpl(
      {required this.label, required this.url, required this.type});

  factory _$StoreActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreActionImplFromJson(json);

  @override
  final String label;
  @override
  final String url;
  @override
  final StoreActionType type;

  @override
  String toString() {
    return 'StoreAction(label: $label, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreActionImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, url, type);

  /// Create a copy of StoreAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreActionImplCopyWith<_$StoreActionImpl> get copyWith =>
      __$$StoreActionImplCopyWithImpl<_$StoreActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreActionImplToJson(
      this,
    );
  }
}

abstract class _StoreAction implements StoreAction {
  factory _StoreAction(
      {required final String label,
      required final String url,
      required final StoreActionType type}) = _$StoreActionImpl;

  factory _StoreAction.fromJson(Map<String, dynamic> json) =
      _$StoreActionImpl.fromJson;

  @override
  String get label;
  @override
  String get url;
  @override
  StoreActionType get type;

  /// Create a copy of StoreAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreActionImplCopyWith<_$StoreActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmbaddedAddress _$EmbaddedAddressFromJson(Map<String, dynamic> json) {
  return _EmbaddedAddress.fromJson(json);
}

/// @nodoc
mixin _$EmbaddedAddress {
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  EmbaddedLocation? get location => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this EmbaddedAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbaddedAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbaddedAddressCopyWith<EmbaddedAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbaddedAddressCopyWith<$Res> {
  factory $EmbaddedAddressCopyWith(
          EmbaddedAddress value, $Res Function(EmbaddedAddress) then) =
      _$EmbaddedAddressCopyWithImpl<$Res, EmbaddedAddress>;
  @useResult
  $Res call(
      {String? city,
      String? state,
      String? country,
      String? street,
      String? zip,
      EmbaddedLocation? location,
      Map<String, dynamic> metadata});

  $EmbaddedLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$EmbaddedAddressCopyWithImpl<$Res, $Val extends EmbaddedAddress>
    implements $EmbaddedAddressCopyWith<$Res> {
  _$EmbaddedAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbaddedAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? street = freezed,
    Object? zip = freezed,
    Object? location = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as EmbaddedLocation?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of EmbaddedAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmbaddedLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $EmbaddedLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmbaddedAddressImplCopyWith<$Res>
    implements $EmbaddedAddressCopyWith<$Res> {
  factory _$$EmbaddedAddressImplCopyWith(_$EmbaddedAddressImpl value,
          $Res Function(_$EmbaddedAddressImpl) then) =
      __$$EmbaddedAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      String? state,
      String? country,
      String? street,
      String? zip,
      EmbaddedLocation? location,
      Map<String, dynamic> metadata});

  @override
  $EmbaddedLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$EmbaddedAddressImplCopyWithImpl<$Res>
    extends _$EmbaddedAddressCopyWithImpl<$Res, _$EmbaddedAddressImpl>
    implements _$$EmbaddedAddressImplCopyWith<$Res> {
  __$$EmbaddedAddressImplCopyWithImpl(
      _$EmbaddedAddressImpl _value, $Res Function(_$EmbaddedAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbaddedAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? street = freezed,
    Object? zip = freezed,
    Object? location = freezed,
    Object? metadata = null,
  }) {
    return _then(_$EmbaddedAddressImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as EmbaddedLocation?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbaddedAddressImpl implements _EmbaddedAddress {
  _$EmbaddedAddressImpl(
      {this.city,
      this.state,
      this.country,
      this.street,
      this.zip,
      this.location,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$EmbaddedAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbaddedAddressImplFromJson(json);

  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? street;
  @override
  final String? zip;
  @override
  final EmbaddedLocation? location;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'EmbaddedAddress(city: $city, state: $state, country: $country, street: $street, zip: $zip, location: $location, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbaddedAddressImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, city, state, country, street,
      zip, location, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of EmbaddedAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbaddedAddressImplCopyWith<_$EmbaddedAddressImpl> get copyWith =>
      __$$EmbaddedAddressImplCopyWithImpl<_$EmbaddedAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbaddedAddressImplToJson(
      this,
    );
  }
}

abstract class _EmbaddedAddress implements EmbaddedAddress {
  factory _EmbaddedAddress(
      {final String? city,
      final String? state,
      final String? country,
      final String? street,
      final String? zip,
      final EmbaddedLocation? location,
      final Map<String, dynamic> metadata}) = _$EmbaddedAddressImpl;

  factory _EmbaddedAddress.fromJson(Map<String, dynamic> json) =
      _$EmbaddedAddressImpl.fromJson;

  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get street;
  @override
  String? get zip;
  @override
  EmbaddedLocation? get location;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of EmbaddedAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbaddedAddressImplCopyWith<_$EmbaddedAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmbaddedLocation _$EmbaddedLocationFromJson(Map<String, dynamic> json) {
  return _EmbaddedLocation.fromJson(json);
}

/// @nodoc
mixin _$EmbaddedLocation {
  String? get geohash => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  /// Serializes this EmbaddedLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbaddedLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbaddedLocationCopyWith<EmbaddedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbaddedLocationCopyWith<$Res> {
  factory $EmbaddedLocationCopyWith(
          EmbaddedLocation value, $Res Function(EmbaddedLocation) then) =
      _$EmbaddedLocationCopyWithImpl<$Res, EmbaddedLocation>;
  @useResult
  $Res call({String? geohash, double lat, double long});
}

/// @nodoc
class _$EmbaddedLocationCopyWithImpl<$Res, $Val extends EmbaddedLocation>
    implements $EmbaddedLocationCopyWith<$Res> {
  _$EmbaddedLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbaddedLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geohash = freezed,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      geohash: freezed == geohash
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbaddedLocationImplCopyWith<$Res>
    implements $EmbaddedLocationCopyWith<$Res> {
  factory _$$EmbaddedLocationImplCopyWith(_$EmbaddedLocationImpl value,
          $Res Function(_$EmbaddedLocationImpl) then) =
      __$$EmbaddedLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? geohash, double lat, double long});
}

/// @nodoc
class __$$EmbaddedLocationImplCopyWithImpl<$Res>
    extends _$EmbaddedLocationCopyWithImpl<$Res, _$EmbaddedLocationImpl>
    implements _$$EmbaddedLocationImplCopyWith<$Res> {
  __$$EmbaddedLocationImplCopyWithImpl(_$EmbaddedLocationImpl _value,
      $Res Function(_$EmbaddedLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbaddedLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geohash = freezed,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$EmbaddedLocationImpl(
      geohash: freezed == geohash
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbaddedLocationImpl implements _EmbaddedLocation {
  _$EmbaddedLocationImpl({this.geohash, required this.lat, required this.long});

  factory _$EmbaddedLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbaddedLocationImplFromJson(json);

  @override
  final String? geohash;
  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'EmbaddedLocation(geohash: $geohash, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbaddedLocationImpl &&
            (identical(other.geohash, geohash) || other.geohash == geohash) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, geohash, lat, long);

  /// Create a copy of EmbaddedLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbaddedLocationImplCopyWith<_$EmbaddedLocationImpl> get copyWith =>
      __$$EmbaddedLocationImplCopyWithImpl<_$EmbaddedLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbaddedLocationImplToJson(
      this,
    );
  }
}

abstract class _EmbaddedLocation implements EmbaddedLocation {
  factory _EmbaddedLocation(
      {final String? geohash,
      required final double lat,
      required final double long}) = _$EmbaddedLocationImpl;

  factory _EmbaddedLocation.fromJson(Map<String, dynamic> json) =
      _$EmbaddedLocationImpl.fromJson;

  @override
  String? get geohash;
  @override
  double get lat;
  @override
  double get long;

  /// Create a copy of EmbaddedLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbaddedLocationImplCopyWith<_$EmbaddedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmbaddedContact _$EmbaddedContactFromJson(Map<String, dynamic> json) {
  return _EmbaddedContact.fromJson(json);
}

/// @nodoc
mixin _$EmbaddedContact {
  String? get name => throw _privateConstructorUsedError;
  EmbaddedContactType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this EmbaddedContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbaddedContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbaddedContactCopyWith<EmbaddedContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbaddedContactCopyWith<$Res> {
  factory $EmbaddedContactCopyWith(
          EmbaddedContact value, $Res Function(EmbaddedContact) then) =
      _$EmbaddedContactCopyWithImpl<$Res, EmbaddedContact>;
  @useResult
  $Res call(
      {String? name,
      EmbaddedContactType type,
      String value,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$EmbaddedContactCopyWithImpl<$Res, $Val extends EmbaddedContact>
    implements $EmbaddedContactCopyWith<$Res> {
  _$EmbaddedContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbaddedContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = null,
    Object? value = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EmbaddedContactType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbaddedContactImplCopyWith<$Res>
    implements $EmbaddedContactCopyWith<$Res> {
  factory _$$EmbaddedContactImplCopyWith(_$EmbaddedContactImpl value,
          $Res Function(_$EmbaddedContactImpl) then) =
      __$$EmbaddedContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      EmbaddedContactType type,
      String value,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$EmbaddedContactImplCopyWithImpl<$Res>
    extends _$EmbaddedContactCopyWithImpl<$Res, _$EmbaddedContactImpl>
    implements _$$EmbaddedContactImplCopyWith<$Res> {
  __$$EmbaddedContactImplCopyWithImpl(
      _$EmbaddedContactImpl _value, $Res Function(_$EmbaddedContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbaddedContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = null,
    Object? value = null,
    Object? metadata = null,
  }) {
    return _then(_$EmbaddedContactImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EmbaddedContactType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbaddedContactImpl implements _EmbaddedContact {
  _$EmbaddedContactImpl(
      {this.name,
      required this.type,
      required this.value,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$EmbaddedContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbaddedContactImplFromJson(json);

  @override
  final String? name;
  @override
  final EmbaddedContactType type;
  @override
  final String value;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'EmbaddedContact(name: $name, type: $type, value: $value, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbaddedContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, value,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of EmbaddedContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbaddedContactImplCopyWith<_$EmbaddedContactImpl> get copyWith =>
      __$$EmbaddedContactImplCopyWithImpl<_$EmbaddedContactImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbaddedContactImplToJson(
      this,
    );
  }
}

abstract class _EmbaddedContact implements EmbaddedContact {
  factory _EmbaddedContact(
      {final String? name,
      required final EmbaddedContactType type,
      required final String value,
      final Map<String, dynamic> metadata}) = _$EmbaddedContactImpl;

  factory _EmbaddedContact.fromJson(Map<String, dynamic> json) =
      _$EmbaddedContactImpl.fromJson;

  @override
  String? get name;
  @override
  EmbaddedContactType get type;
  @override
  String get value;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of EmbaddedContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbaddedContactImplCopyWith<_$EmbaddedContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
