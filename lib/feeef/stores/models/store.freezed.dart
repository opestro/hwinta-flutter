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

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  StoreBanner? get banner => throw _privateConstructorUsedError;
  StoreAction? get action => throw _privateConstructorUsedError;
  StoreDomain? get domain => throw _privateConstructorUsedError;
  StoreDecoration? get decoration => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get ondarkLogoUrl => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<EmbaddedCategory> get categories => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<EmbaddedAddress> get addresses => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  List<EmbaddedContact> get contacts => throw _privateConstructorUsedError;
  StoreIntegrations get integrations => throw _privateConstructorUsedError;
  List<List<num?>?> get defaultShippingRates =>
      throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  DateTime? get blockedAt => throw _privateConstructorUsedError; // subscription
  StoreSubscription? get subscription => throw _privateConstructorUsedError;
  num? get due => throw _privateConstructorUsedError; // StoreConfigs
  StoreConfigs? get configs =>
      throw _privateConstructorUsedError; // metaPixelIds
  List<String>? get metaPixelIds => throw _privateConstructorUsedError;

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String slug,
      StoreBanner? banner,
      StoreAction? action,
      StoreDomain? domain,
      StoreDecoration? decoration,
      String name,
      String? logoUrl,
      String? ondarkLogoUrl,
      String userId,
      List<EmbaddedCategory> categories,
      String? title,
      String? description,
      List<EmbaddedAddress> addresses,
      Map<String, dynamic> metadata,
      List<EmbaddedContact> contacts,
      StoreIntegrations integrations,
      List<List<num?>?> defaultShippingRates,
      DateTime? verifiedAt,
      DateTime? blockedAt,
      StoreSubscription? subscription,
      num? due,
      StoreConfigs? configs,
      List<String>? metaPixelIds});

  $StoreBannerCopyWith<$Res>? get banner;
  $StoreActionCopyWith<$Res>? get action;
  $StoreDomainCopyWith<$Res>? get domain;
  $StoreDecorationCopyWith<$Res>? get decoration;
  $StoreIntegrationsCopyWith<$Res> get integrations;
  $StoreSubscriptionCopyWith<$Res>? get subscription;
  $StoreConfigsCopyWith<$Res>? get configs;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? slug = null,
    Object? banner = freezed,
    Object? action = freezed,
    Object? domain = freezed,
    Object? decoration = freezed,
    Object? name = null,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? userId = null,
    Object? categories = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? addresses = null,
    Object? metadata = null,
    Object? contacts = null,
    Object? integrations = null,
    Object? defaultShippingRates = null,
    Object? verifiedAt = freezed,
    Object? blockedAt = freezed,
    Object? subscription = freezed,
    Object? due = freezed,
    Object? configs = freezed,
    Object? metaPixelIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as StoreBanner?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StoreAction?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as StoreDomain?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StoreDecoration?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedCategory>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedAddress>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedContact>,
      integrations: null == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as StoreIntegrations,
      defaultShippingRates: null == defaultShippingRates
          ? _value.defaultShippingRates
          : defaultShippingRates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StoreSubscription?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as num?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as StoreConfigs?,
      metaPixelIds: freezed == metaPixelIds
          ? _value.metaPixelIds
          : metaPixelIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreBannerCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $StoreBannerCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $StoreActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDomainCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $StoreDomainCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $StoreDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreIntegrationsCopyWith<$Res> get integrations {
    return $StoreIntegrationsCopyWith<$Res>(_value.integrations, (value) {
      return _then(_value.copyWith(integrations: value) as $Val);
    });
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $StoreSubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreConfigsCopyWith<$Res>? get configs {
    if (_value.configs == null) {
      return null;
    }

    return $StoreConfigsCopyWith<$Res>(_value.configs!, (value) {
      return _then(_value.copyWith(configs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String slug,
      StoreBanner? banner,
      StoreAction? action,
      StoreDomain? domain,
      StoreDecoration? decoration,
      String name,
      String? logoUrl,
      String? ondarkLogoUrl,
      String userId,
      List<EmbaddedCategory> categories,
      String? title,
      String? description,
      List<EmbaddedAddress> addresses,
      Map<String, dynamic> metadata,
      List<EmbaddedContact> contacts,
      StoreIntegrations integrations,
      List<List<num?>?> defaultShippingRates,
      DateTime? verifiedAt,
      DateTime? blockedAt,
      StoreSubscription? subscription,
      num? due,
      StoreConfigs? configs,
      List<String>? metaPixelIds});

  @override
  $StoreBannerCopyWith<$Res>? get banner;
  @override
  $StoreActionCopyWith<$Res>? get action;
  @override
  $StoreDomainCopyWith<$Res>? get domain;
  @override
  $StoreDecorationCopyWith<$Res>? get decoration;
  @override
  $StoreIntegrationsCopyWith<$Res> get integrations;
  @override
  $StoreSubscriptionCopyWith<$Res>? get subscription;
  @override
  $StoreConfigsCopyWith<$Res>? get configs;
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? slug = null,
    Object? banner = freezed,
    Object? action = freezed,
    Object? domain = freezed,
    Object? decoration = freezed,
    Object? name = null,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? userId = null,
    Object? categories = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? addresses = null,
    Object? metadata = null,
    Object? contacts = null,
    Object? integrations = null,
    Object? defaultShippingRates = null,
    Object? verifiedAt = freezed,
    Object? blockedAt = freezed,
    Object? subscription = freezed,
    Object? due = freezed,
    Object? configs = freezed,
    Object? metaPixelIds = freezed,
  }) {
    return _then(_$StoreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as StoreBanner?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StoreAction?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as StoreDomain?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StoreDecoration?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedCategory>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedAddress>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedContact>,
      integrations: null == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as StoreIntegrations,
      defaultShippingRates: null == defaultShippingRates
          ? _value._defaultShippingRates
          : defaultShippingRates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StoreSubscription?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as num?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as StoreConfigs?,
      metaPixelIds: freezed == metaPixelIds
          ? _value._metaPixelIds
          : metaPixelIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  _$StoreImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.slug,
      this.banner,
      this.action,
      this.domain,
      this.decoration,
      required this.name,
      this.logoUrl,
      this.ondarkLogoUrl,
      required this.userId,
      final List<EmbaddedCategory> categories = const [],
      this.title,
      this.description,
      final List<EmbaddedAddress> addresses = const [],
      final Map<String, dynamic> metadata = const {},
      final List<EmbaddedContact> contacts = const [],
      this.integrations = const StoreIntegrations(),
      final List<List<num?>?> defaultShippingRates = const [],
      this.verifiedAt,
      this.blockedAt,
      this.subscription,
      this.due,
      this.configs,
      final List<String>? metaPixelIds})
      : _categories = categories,
        _addresses = addresses,
        _metadata = metadata,
        _contacts = contacts,
        _defaultShippingRates = defaultShippingRates,
        _metaPixelIds = metaPixelIds;

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String slug;
  @override
  final StoreBanner? banner;
  @override
  final StoreAction? action;
  @override
  final StoreDomain? domain;
  @override
  final StoreDecoration? decoration;
  @override
  final String name;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;
  @override
  final String userId;
  final List<EmbaddedCategory> _categories;
  @override
  @JsonKey()
  List<EmbaddedCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? title;
  @override
  final String? description;
  final List<EmbaddedAddress> _addresses;
  @override
  @JsonKey()
  List<EmbaddedAddress> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  final List<EmbaddedContact> _contacts;
  @override
  @JsonKey()
  List<EmbaddedContact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @JsonKey()
  final StoreIntegrations integrations;
  final List<List<num?>?> _defaultShippingRates;
  @override
  @JsonKey()
  List<List<num?>?> get defaultShippingRates {
    if (_defaultShippingRates is EqualUnmodifiableListView)
      return _defaultShippingRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultShippingRates);
  }

  @override
  final DateTime? verifiedAt;
  @override
  final DateTime? blockedAt;
// subscription
  @override
  final StoreSubscription? subscription;
  @override
  final num? due;
// StoreConfigs
  @override
  final StoreConfigs? configs;
// metaPixelIds
  final List<String>? _metaPixelIds;
// metaPixelIds
  @override
  List<String>? get metaPixelIds {
    final value = _metaPixelIds;
    if (value == null) return null;
    if (_metaPixelIds is EqualUnmodifiableListView) return _metaPixelIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Store(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, name: $name, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, userId: $userId, categories: $categories, title: $title, description: $description, addresses: $addresses, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, verifiedAt: $verifiedAt, blockedAt: $blockedAt, subscription: $subscription, due: $due, configs: $configs, metaPixelIds: $metaPixelIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.integrations, integrations) ||
                other.integrations == integrations) &&
            const DeepCollectionEquality()
                .equals(other._defaultShippingRates, _defaultShippingRates) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.blockedAt, blockedAt) ||
                other.blockedAt == blockedAt) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.configs, configs) || other.configs == configs) &&
            const DeepCollectionEquality()
                .equals(other._metaPixelIds, _metaPixelIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        slug,
        banner,
        action,
        domain,
        decoration,
        name,
        logoUrl,
        ondarkLogoUrl,
        userId,
        const DeepCollectionEquality().hash(_categories),
        title,
        description,
        const DeepCollectionEquality().hash(_addresses),
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(_contacts),
        integrations,
        const DeepCollectionEquality().hash(_defaultShippingRates),
        verifiedAt,
        blockedAt,
        subscription,
        due,
        configs,
        const DeepCollectionEquality().hash(_metaPixelIds)
      ]);

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  factory _Store(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String slug,
      final StoreBanner? banner,
      final StoreAction? action,
      final StoreDomain? domain,
      final StoreDecoration? decoration,
      required final String name,
      final String? logoUrl,
      final String? ondarkLogoUrl,
      required final String userId,
      final List<EmbaddedCategory> categories,
      final String? title,
      final String? description,
      final List<EmbaddedAddress> addresses,
      final Map<String, dynamic> metadata,
      final List<EmbaddedContact> contacts,
      final StoreIntegrations integrations,
      final List<List<num?>?> defaultShippingRates,
      final DateTime? verifiedAt,
      final DateTime? blockedAt,
      final StoreSubscription? subscription,
      final num? due,
      final StoreConfigs? configs,
      final List<String>? metaPixelIds}) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get slug;
  @override
  StoreBanner? get banner;
  @override
  StoreAction? get action;
  @override
  StoreDomain? get domain;
  @override
  StoreDecoration? get decoration;
  @override
  String get name;
  @override
  String? get logoUrl;
  @override
  String? get ondarkLogoUrl;
  @override
  String get userId;
  @override
  List<EmbaddedCategory> get categories;
  @override
  String? get title;
  @override
  String? get description;
  @override
  List<EmbaddedAddress> get addresses;
  @override
  Map<String, dynamic> get metadata;
  @override
  List<EmbaddedContact> get contacts;
  @override
  StoreIntegrations get integrations;
  @override
  List<List<num?>?> get defaultShippingRates;
  @override
  DateTime? get verifiedAt;
  @override
  DateTime? get blockedAt; // subscription
  @override
  StoreSubscription? get subscription;
  @override
  num? get due; // StoreConfigs
  @override
  StoreConfigs? get configs; // metaPixelIds
  @override
  List<String>? get metaPixelIds;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreCreate _$StoreCreateFromJson(Map<String, dynamic> json) {
  return _StoreCreate.fromJson(json);
}

/// @nodoc
mixin _$StoreCreate {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  StoreBanner? get banner => throw _privateConstructorUsedError;
  StoreAction? get action => throw _privateConstructorUsedError;
  StoreDomain? get domain => throw _privateConstructorUsedError;
  StoreDecoration? get decoration => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get ondarkLogoUrl => throw _privateConstructorUsedError;
  List<EmbaddedCategory> get categories => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<EmbaddedAddress> get addresses => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  List<EmbaddedContact> get contacts => throw _privateConstructorUsedError;
  StoreIntegrations get integrations => throw _privateConstructorUsedError;
  List<List<num?>?> get defaultShippingRates =>
      throw _privateConstructorUsedError; // subscription
  StoreSubscription? get subscription => throw _privateConstructorUsedError;
  num? get due => throw _privateConstructorUsedError;

  /// Serializes this StoreCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCreateCopyWith<StoreCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCreateCopyWith<$Res> {
  factory $StoreCreateCopyWith(
          StoreCreate value, $Res Function(StoreCreate) then) =
      _$StoreCreateCopyWithImpl<$Res, StoreCreate>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String slug,
      StoreBanner? banner,
      StoreAction? action,
      StoreDomain? domain,
      StoreDecoration? decoration,
      String? logoUrl,
      String? ondarkLogoUrl,
      List<EmbaddedCategory> categories,
      String? title,
      String? description,
      List<EmbaddedAddress> addresses,
      Map<String, dynamic> metadata,
      List<EmbaddedContact> contacts,
      StoreIntegrations integrations,
      List<List<num?>?> defaultShippingRates,
      StoreSubscription? subscription,
      num? due});

  $StoreBannerCopyWith<$Res>? get banner;
  $StoreActionCopyWith<$Res>? get action;
  $StoreDomainCopyWith<$Res>? get domain;
  $StoreDecorationCopyWith<$Res>? get decoration;
  $StoreIntegrationsCopyWith<$Res> get integrations;
  $StoreSubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$StoreCreateCopyWithImpl<$Res, $Val extends StoreCreate>
    implements $StoreCreateCopyWith<$Res> {
  _$StoreCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? banner = freezed,
    Object? action = freezed,
    Object? domain = freezed,
    Object? decoration = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? categories = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? addresses = null,
    Object? metadata = null,
    Object? contacts = null,
    Object? integrations = null,
    Object? defaultShippingRates = null,
    Object? subscription = freezed,
    Object? due = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as StoreBanner?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StoreAction?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as StoreDomain?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StoreDecoration?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedCategory>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedAddress>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedContact>,
      integrations: null == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as StoreIntegrations,
      defaultShippingRates: null == defaultShippingRates
          ? _value.defaultShippingRates
          : defaultShippingRates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StoreSubscription?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreBannerCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $StoreBannerCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $StoreActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDomainCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $StoreDomainCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $StoreDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreIntegrationsCopyWith<$Res> get integrations {
    return $StoreIntegrationsCopyWith<$Res>(_value.integrations, (value) {
      return _then(_value.copyWith(integrations: value) as $Val);
    });
  }

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $StoreSubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreCreateImplCopyWith<$Res>
    implements $StoreCreateCopyWith<$Res> {
  factory _$$StoreCreateImplCopyWith(
          _$StoreCreateImpl value, $Res Function(_$StoreCreateImpl) then) =
      __$$StoreCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String slug,
      StoreBanner? banner,
      StoreAction? action,
      StoreDomain? domain,
      StoreDecoration? decoration,
      String? logoUrl,
      String? ondarkLogoUrl,
      List<EmbaddedCategory> categories,
      String? title,
      String? description,
      List<EmbaddedAddress> addresses,
      Map<String, dynamic> metadata,
      List<EmbaddedContact> contacts,
      StoreIntegrations integrations,
      List<List<num?>?> defaultShippingRates,
      StoreSubscription? subscription,
      num? due});

  @override
  $StoreBannerCopyWith<$Res>? get banner;
  @override
  $StoreActionCopyWith<$Res>? get action;
  @override
  $StoreDomainCopyWith<$Res>? get domain;
  @override
  $StoreDecorationCopyWith<$Res>? get decoration;
  @override
  $StoreIntegrationsCopyWith<$Res> get integrations;
  @override
  $StoreSubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$StoreCreateImplCopyWithImpl<$Res>
    extends _$StoreCreateCopyWithImpl<$Res, _$StoreCreateImpl>
    implements _$$StoreCreateImplCopyWith<$Res> {
  __$$StoreCreateImplCopyWithImpl(
      _$StoreCreateImpl _value, $Res Function(_$StoreCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? banner = freezed,
    Object? action = freezed,
    Object? domain = freezed,
    Object? decoration = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? categories = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? addresses = null,
    Object? metadata = null,
    Object? contacts = null,
    Object? integrations = null,
    Object? defaultShippingRates = null,
    Object? subscription = freezed,
    Object? due = freezed,
  }) {
    return _then(_$StoreCreateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as StoreBanner?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StoreAction?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as StoreDomain?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StoreDecoration?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedCategory>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedAddress>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedContact>,
      integrations: null == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as StoreIntegrations,
      defaultShippingRates: null == defaultShippingRates
          ? _value._defaultShippingRates
          : defaultShippingRates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StoreSubscription?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreCreateImpl implements _StoreCreate {
  const _$StoreCreateImpl(
      {this.id,
      required this.name,
      required this.slug,
      this.banner,
      this.action,
      this.domain,
      this.decoration,
      this.logoUrl,
      this.ondarkLogoUrl,
      final List<EmbaddedCategory> categories = const [],
      this.title,
      this.description,
      final List<EmbaddedAddress> addresses = const [],
      final Map<String, dynamic> metadata = const {},
      final List<EmbaddedContact> contacts = const [],
      this.integrations = const StoreIntegrations(),
      final List<List<num?>?> defaultShippingRates = const [],
      this.subscription,
      this.due})
      : _categories = categories,
        _addresses = addresses,
        _metadata = metadata,
        _contacts = contacts,
        _defaultShippingRates = defaultShippingRates;

  factory _$StoreCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreCreateImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final StoreBanner? banner;
  @override
  final StoreAction? action;
  @override
  final StoreDomain? domain;
  @override
  final StoreDecoration? decoration;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;
  final List<EmbaddedCategory> _categories;
  @override
  @JsonKey()
  List<EmbaddedCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? title;
  @override
  final String? description;
  final List<EmbaddedAddress> _addresses;
  @override
  @JsonKey()
  List<EmbaddedAddress> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  final List<EmbaddedContact> _contacts;
  @override
  @JsonKey()
  List<EmbaddedContact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @JsonKey()
  final StoreIntegrations integrations;
  final List<List<num?>?> _defaultShippingRates;
  @override
  @JsonKey()
  List<List<num?>?> get defaultShippingRates {
    if (_defaultShippingRates is EqualUnmodifiableListView)
      return _defaultShippingRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultShippingRates);
  }

// subscription
  @override
  final StoreSubscription? subscription;
  @override
  final num? due;

  @override
  String toString() {
    return 'StoreCreate(id: $id, name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, subscription: $subscription, due: $due)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.integrations, integrations) ||
                other.integrations == integrations) &&
            const DeepCollectionEquality()
                .equals(other._defaultShippingRates, _defaultShippingRates) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.due, due) || other.due == due));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        slug,
        banner,
        action,
        domain,
        decoration,
        logoUrl,
        ondarkLogoUrl,
        const DeepCollectionEquality().hash(_categories),
        title,
        description,
        const DeepCollectionEquality().hash(_addresses),
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(_contacts),
        integrations,
        const DeepCollectionEquality().hash(_defaultShippingRates),
        subscription,
        due
      ]);

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreCreateImplCopyWith<_$StoreCreateImpl> get copyWith =>
      __$$StoreCreateImplCopyWithImpl<_$StoreCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreCreateImplToJson(
      this,
    );
  }
}

abstract class _StoreCreate implements StoreCreate {
  const factory _StoreCreate(
      {final String? id,
      required final String name,
      required final String slug,
      final StoreBanner? banner,
      final StoreAction? action,
      final StoreDomain? domain,
      final StoreDecoration? decoration,
      final String? logoUrl,
      final String? ondarkLogoUrl,
      final List<EmbaddedCategory> categories,
      final String? title,
      final String? description,
      final List<EmbaddedAddress> addresses,
      final Map<String, dynamic> metadata,
      final List<EmbaddedContact> contacts,
      final StoreIntegrations integrations,
      final List<List<num?>?> defaultShippingRates,
      final StoreSubscription? subscription,
      final num? due}) = _$StoreCreateImpl;

  factory _StoreCreate.fromJson(Map<String, dynamic> json) =
      _$StoreCreateImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  StoreBanner? get banner;
  @override
  StoreAction? get action;
  @override
  StoreDomain? get domain;
  @override
  StoreDecoration? get decoration;
  @override
  String? get logoUrl;
  @override
  String? get ondarkLogoUrl;
  @override
  List<EmbaddedCategory> get categories;
  @override
  String? get title;
  @override
  String? get description;
  @override
  List<EmbaddedAddress> get addresses;
  @override
  Map<String, dynamic> get metadata;
  @override
  List<EmbaddedContact> get contacts;
  @override
  StoreIntegrations get integrations;
  @override
  List<List<num?>?> get defaultShippingRates; // subscription
  @override
  StoreSubscription? get subscription;
  @override
  num? get due;

  /// Create a copy of StoreCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreCreateImplCopyWith<_$StoreCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreUpdate _$StoreUpdateFromJson(Map<String, dynamic> json) {
  return _StoreUpdate.fromJson(json);
}

/// @nodoc
mixin _$StoreUpdate {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  StoreBanner? get banner => throw _privateConstructorUsedError;
  StoreAction? get action => throw _privateConstructorUsedError;
  StoreDomain? get domain => throw _privateConstructorUsedError;
  StoreDecoration? get decoration => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get ondarkLogoUrl => throw _privateConstructorUsedError;
  List<EmbaddedCategory>? get categories => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<EmbaddedAddress>? get addresses => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<EmbaddedContact>? get contacts => throw _privateConstructorUsedError;
  StoreIntegrations? get integrations => throw _privateConstructorUsedError;
  List<List<num?>?>? get defaultShippingRates =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false)
  List<String> get setToNull =>
      throw _privateConstructorUsedError; // subscription
  StoreSubscription? get subscription => throw _privateConstructorUsedError;
  num? get due => throw _privateConstructorUsedError; // StoreConfigs
  StoreConfigs? get configs => throw _privateConstructorUsedError;

  /// Serializes this StoreUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreUpdateCopyWith<StoreUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreUpdateCopyWith<$Res> {
  factory $StoreUpdateCopyWith(
          StoreUpdate value, $Res Function(StoreUpdate) then) =
      _$StoreUpdateCopyWithImpl<$Res, StoreUpdate>;
  @useResult
  $Res call(
      {String? name,
      String? slug,
      StoreBanner? banner,
      StoreAction? action,
      StoreDomain? domain,
      StoreDecoration? decoration,
      String? logoUrl,
      String? ondarkLogoUrl,
      List<EmbaddedCategory>? categories,
      String? title,
      String? description,
      List<EmbaddedAddress>? addresses,
      Map<String, dynamic>? metadata,
      List<EmbaddedContact>? contacts,
      StoreIntegrations? integrations,
      List<List<num?>?>? defaultShippingRates,
      @JsonKey(includeFromJson: false) List<String> setToNull,
      StoreSubscription? subscription,
      num? due,
      StoreConfigs? configs});

  $StoreBannerCopyWith<$Res>? get banner;
  $StoreActionCopyWith<$Res>? get action;
  $StoreDomainCopyWith<$Res>? get domain;
  $StoreDecorationCopyWith<$Res>? get decoration;
  $StoreIntegrationsCopyWith<$Res>? get integrations;
  $StoreSubscriptionCopyWith<$Res>? get subscription;
  $StoreConfigsCopyWith<$Res>? get configs;
}

/// @nodoc
class _$StoreUpdateCopyWithImpl<$Res, $Val extends StoreUpdate>
    implements $StoreUpdateCopyWith<$Res> {
  _$StoreUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? banner = freezed,
    Object? action = freezed,
    Object? domain = freezed,
    Object? decoration = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? categories = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? addresses = freezed,
    Object? metadata = freezed,
    Object? contacts = freezed,
    Object? integrations = freezed,
    Object? defaultShippingRates = freezed,
    Object? setToNull = null,
    Object? subscription = freezed,
    Object? due = freezed,
    Object? configs = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as StoreBanner?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StoreAction?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as StoreDomain?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StoreDecoration?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedCategory>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedAddress>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedContact>?,
      integrations: freezed == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as StoreIntegrations?,
      defaultShippingRates: freezed == defaultShippingRates
          ? _value.defaultShippingRates
          : defaultShippingRates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>?,
      setToNull: null == setToNull
          ? _value.setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StoreSubscription?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as num?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as StoreConfigs?,
    ) as $Val);
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreBannerCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $StoreBannerCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreActionCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $StoreActionCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDomainCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $StoreDomainCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $StoreDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreIntegrationsCopyWith<$Res>? get integrations {
    if (_value.integrations == null) {
      return null;
    }

    return $StoreIntegrationsCopyWith<$Res>(_value.integrations!, (value) {
      return _then(_value.copyWith(integrations: value) as $Val);
    });
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreSubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $StoreSubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreConfigsCopyWith<$Res>? get configs {
    if (_value.configs == null) {
      return null;
    }

    return $StoreConfigsCopyWith<$Res>(_value.configs!, (value) {
      return _then(_value.copyWith(configs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreUpdateImplCopyWith<$Res>
    implements $StoreUpdateCopyWith<$Res> {
  factory _$$StoreUpdateImplCopyWith(
          _$StoreUpdateImpl value, $Res Function(_$StoreUpdateImpl) then) =
      __$$StoreUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? slug,
      StoreBanner? banner,
      StoreAction? action,
      StoreDomain? domain,
      StoreDecoration? decoration,
      String? logoUrl,
      String? ondarkLogoUrl,
      List<EmbaddedCategory>? categories,
      String? title,
      String? description,
      List<EmbaddedAddress>? addresses,
      Map<String, dynamic>? metadata,
      List<EmbaddedContact>? contacts,
      StoreIntegrations? integrations,
      List<List<num?>?>? defaultShippingRates,
      @JsonKey(includeFromJson: false) List<String> setToNull,
      StoreSubscription? subscription,
      num? due,
      StoreConfigs? configs});

  @override
  $StoreBannerCopyWith<$Res>? get banner;
  @override
  $StoreActionCopyWith<$Res>? get action;
  @override
  $StoreDomainCopyWith<$Res>? get domain;
  @override
  $StoreDecorationCopyWith<$Res>? get decoration;
  @override
  $StoreIntegrationsCopyWith<$Res>? get integrations;
  @override
  $StoreSubscriptionCopyWith<$Res>? get subscription;
  @override
  $StoreConfigsCopyWith<$Res>? get configs;
}

/// @nodoc
class __$$StoreUpdateImplCopyWithImpl<$Res>
    extends _$StoreUpdateCopyWithImpl<$Res, _$StoreUpdateImpl>
    implements _$$StoreUpdateImplCopyWith<$Res> {
  __$$StoreUpdateImplCopyWithImpl(
      _$StoreUpdateImpl _value, $Res Function(_$StoreUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? banner = freezed,
    Object? action = freezed,
    Object? domain = freezed,
    Object? decoration = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
    Object? categories = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? addresses = freezed,
    Object? metadata = freezed,
    Object? contacts = freezed,
    Object? integrations = freezed,
    Object? defaultShippingRates = freezed,
    Object? setToNull = null,
    Object? subscription = freezed,
    Object? due = freezed,
    Object? configs = freezed,
  }) {
    return _then(_$StoreUpdateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as StoreBanner?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StoreAction?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as StoreDomain?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as StoreDecoration?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ondarkLogoUrl: freezed == ondarkLogoUrl
          ? _value.ondarkLogoUrl
          : ondarkLogoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedCategory>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedAddress>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contacts: freezed == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<EmbaddedContact>?,
      integrations: freezed == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as StoreIntegrations?,
      defaultShippingRates: freezed == defaultShippingRates
          ? _value._defaultShippingRates
          : defaultShippingRates // ignore: cast_nullable_to_non_nullable
              as List<List<num?>?>?,
      setToNull: null == setToNull
          ? _value._setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StoreSubscription?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as num?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as StoreConfigs?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreUpdateImpl implements _StoreUpdate {
  const _$StoreUpdateImpl(
      {this.name,
      this.slug,
      this.banner,
      this.action,
      this.domain,
      this.decoration,
      this.logoUrl,
      this.ondarkLogoUrl,
      final List<EmbaddedCategory>? categories,
      this.title,
      this.description,
      final List<EmbaddedAddress>? addresses,
      final Map<String, dynamic>? metadata,
      final List<EmbaddedContact>? contacts,
      this.integrations,
      final List<List<num?>?>? defaultShippingRates,
      @JsonKey(includeFromJson: false) final List<String> setToNull = const [],
      this.subscription,
      this.due,
      this.configs})
      : _categories = categories,
        _addresses = addresses,
        _metadata = metadata,
        _contacts = contacts,
        _defaultShippingRates = defaultShippingRates,
        _setToNull = setToNull;

  factory _$StoreUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreUpdateImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final StoreBanner? banner;
  @override
  final StoreAction? action;
  @override
  final StoreDomain? domain;
  @override
  final StoreDecoration? decoration;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;
  final List<EmbaddedCategory>? _categories;
  @override
  List<EmbaddedCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? title;
  @override
  final String? description;
  final List<EmbaddedAddress>? _addresses;
  @override
  List<EmbaddedAddress>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<EmbaddedContact>? _contacts;
  @override
  List<EmbaddedContact>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StoreIntegrations? integrations;
  final List<List<num?>?>? _defaultShippingRates;
  @override
  List<List<num?>?>? get defaultShippingRates {
    final value = _defaultShippingRates;
    if (value == null) return null;
    if (_defaultShippingRates is EqualUnmodifiableListView)
      return _defaultShippingRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  final List<String> _setToNull;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull {
    if (_setToNull is EqualUnmodifiableListView) return _setToNull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setToNull);
  }

// subscription
  @override
  final StoreSubscription? subscription;
  @override
  final num? due;
// StoreConfigs
  @override
  final StoreConfigs? configs;

  @override
  String toString() {
    return 'StoreUpdate(name: $name, slug: $slug, banner: $banner, action: $action, domain: $domain, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl, categories: $categories, title: $title, description: $description, addresses: $addresses, metadata: $metadata, contacts: $contacts, integrations: $integrations, defaultShippingRates: $defaultShippingRates, setToNull: $setToNull, subscription: $subscription, due: $due, configs: $configs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.integrations, integrations) ||
                other.integrations == integrations) &&
            const DeepCollectionEquality()
                .equals(other._defaultShippingRates, _defaultShippingRates) &&
            const DeepCollectionEquality()
                .equals(other._setToNull, _setToNull) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.configs, configs) || other.configs == configs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        slug,
        banner,
        action,
        domain,
        decoration,
        logoUrl,
        ondarkLogoUrl,
        const DeepCollectionEquality().hash(_categories),
        title,
        description,
        const DeepCollectionEquality().hash(_addresses),
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(_contacts),
        integrations,
        const DeepCollectionEquality().hash(_defaultShippingRates),
        const DeepCollectionEquality().hash(_setToNull),
        subscription,
        due,
        configs
      ]);

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreUpdateImplCopyWith<_$StoreUpdateImpl> get copyWith =>
      __$$StoreUpdateImplCopyWithImpl<_$StoreUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreUpdateImplToJson(
      this,
    );
  }
}

abstract class _StoreUpdate implements StoreUpdate {
  const factory _StoreUpdate(
      {final String? name,
      final String? slug,
      final StoreBanner? banner,
      final StoreAction? action,
      final StoreDomain? domain,
      final StoreDecoration? decoration,
      final String? logoUrl,
      final String? ondarkLogoUrl,
      final List<EmbaddedCategory>? categories,
      final String? title,
      final String? description,
      final List<EmbaddedAddress>? addresses,
      final Map<String, dynamic>? metadata,
      final List<EmbaddedContact>? contacts,
      final StoreIntegrations? integrations,
      final List<List<num?>?>? defaultShippingRates,
      @JsonKey(includeFromJson: false) final List<String> setToNull,
      final StoreSubscription? subscription,
      final num? due,
      final StoreConfigs? configs}) = _$StoreUpdateImpl;

  factory _StoreUpdate.fromJson(Map<String, dynamic> json) =
      _$StoreUpdateImpl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  StoreBanner? get banner;
  @override
  StoreAction? get action;
  @override
  StoreDomain? get domain;
  @override
  StoreDecoration? get decoration;
  @override
  String? get logoUrl;
  @override
  String? get ondarkLogoUrl;
  @override
  List<EmbaddedCategory>? get categories;
  @override
  String? get title;
  @override
  String? get description;
  @override
  List<EmbaddedAddress>? get addresses;
  @override
  Map<String, dynamic>? get metadata;
  @override
  List<EmbaddedContact>? get contacts;
  @override
  StoreIntegrations? get integrations;
  @override
  List<List<num?>?>?
      get defaultShippingRates; // ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull; // subscription
  @override
  StoreSubscription? get subscription;
  @override
  num? get due; // StoreConfigs
  @override
  StoreConfigs? get configs;

  /// Create a copy of StoreUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreUpdateImplCopyWith<_$StoreUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreSubscription _$StoreSubscriptionFromJson(Map<String, dynamic> json) {
  return _StoreSubscription.fromJson(json);
}

/// @nodoc
mixin _$StoreSubscription {
  StoreSubscriptionType get type => throw _privateConstructorUsedError;
  StoreSubscriptionStatus get status => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this StoreSubscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreSubscriptionCopyWith<StoreSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSubscriptionCopyWith<$Res> {
  factory $StoreSubscriptionCopyWith(
          StoreSubscription value, $Res Function(StoreSubscription) then) =
      _$StoreSubscriptionCopyWithImpl<$Res, StoreSubscription>;
  @useResult
  $Res call(
      {StoreSubscriptionType type,
      StoreSubscriptionStatus status,
      DateTime startedAt,
      DateTime? expiresAt,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$StoreSubscriptionCopyWithImpl<$Res, $Val extends StoreSubscription>
    implements $StoreSubscriptionCopyWith<$Res> {
  _$StoreSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? status = null,
    Object? startedAt = null,
    Object? expiresAt = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoreSubscriptionType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoreSubscriptionStatus,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreSubscriptionImplCopyWith<$Res>
    implements $StoreSubscriptionCopyWith<$Res> {
  factory _$$StoreSubscriptionImplCopyWith(_$StoreSubscriptionImpl value,
          $Res Function(_$StoreSubscriptionImpl) then) =
      __$$StoreSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StoreSubscriptionType type,
      StoreSubscriptionStatus status,
      DateTime startedAt,
      DateTime? expiresAt,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$StoreSubscriptionImplCopyWithImpl<$Res>
    extends _$StoreSubscriptionCopyWithImpl<$Res, _$StoreSubscriptionImpl>
    implements _$$StoreSubscriptionImplCopyWith<$Res> {
  __$$StoreSubscriptionImplCopyWithImpl(_$StoreSubscriptionImpl _value,
      $Res Function(_$StoreSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? status = null,
    Object? startedAt = null,
    Object? expiresAt = freezed,
    Object? metadata = null,
  }) {
    return _then(_$StoreSubscriptionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoreSubscriptionType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoreSubscriptionStatus,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
class _$StoreSubscriptionImpl implements _StoreSubscription {
  const _$StoreSubscriptionImpl(
      {required this.type,
      required this.status,
      required this.startedAt,
      this.expiresAt,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$StoreSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreSubscriptionImplFromJson(json);

  @override
  final StoreSubscriptionType type;
  @override
  final StoreSubscriptionStatus status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? expiresAt;
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
    return 'StoreSubscription(type: $type, status: $status, startedAt: $startedAt, expiresAt: $expiresAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreSubscriptionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, status, startedAt,
      expiresAt, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of StoreSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreSubscriptionImplCopyWith<_$StoreSubscriptionImpl> get copyWith =>
      __$$StoreSubscriptionImplCopyWithImpl<_$StoreSubscriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _StoreSubscription implements StoreSubscription {
  const factory _StoreSubscription(
      {required final StoreSubscriptionType type,
      required final StoreSubscriptionStatus status,
      required final DateTime startedAt,
      final DateTime? expiresAt,
      final Map<String, dynamic> metadata}) = _$StoreSubscriptionImpl;

  factory _StoreSubscription.fromJson(Map<String, dynamic> json) =
      _$StoreSubscriptionImpl.fromJson;

  @override
  StoreSubscriptionType get type;
  @override
  StoreSubscriptionStatus get status;
  @override
  DateTime get startedAt;
  @override
  DateTime? get expiresAt;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of StoreSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreSubscriptionImplCopyWith<_$StoreSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreConfigs _$StoreConfigsFromJson(Map<String, dynamic> json) {
  return _StoreConfigs.fromJson(json);
}

/// @nodoc
mixin _$StoreConfigs {
  List<StoreCurrencyConfig> get currencies =>
      throw _privateConstructorUsedError;
  int get defaultCurrency => throw _privateConstructorUsedError;

  /// Serializes this StoreConfigs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreConfigs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreConfigsCopyWith<StoreConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreConfigsCopyWith<$Res> {
  factory $StoreConfigsCopyWith(
          StoreConfigs value, $Res Function(StoreConfigs) then) =
      _$StoreConfigsCopyWithImpl<$Res, StoreConfigs>;
  @useResult
  $Res call({List<StoreCurrencyConfig> currencies, int defaultCurrency});
}

/// @nodoc
class _$StoreConfigsCopyWithImpl<$Res, $Val extends StoreConfigs>
    implements $StoreConfigsCopyWith<$Res> {
  _$StoreConfigsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreConfigs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
    Object? defaultCurrency = null,
  }) {
    return _then(_value.copyWith(
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<StoreCurrencyConfig>,
      defaultCurrency: null == defaultCurrency
          ? _value.defaultCurrency
          : defaultCurrency // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreConfigsImplCopyWith<$Res>
    implements $StoreConfigsCopyWith<$Res> {
  factory _$$StoreConfigsImplCopyWith(
          _$StoreConfigsImpl value, $Res Function(_$StoreConfigsImpl) then) =
      __$$StoreConfigsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreCurrencyConfig> currencies, int defaultCurrency});
}

/// @nodoc
class __$$StoreConfigsImplCopyWithImpl<$Res>
    extends _$StoreConfigsCopyWithImpl<$Res, _$StoreConfigsImpl>
    implements _$$StoreConfigsImplCopyWith<$Res> {
  __$$StoreConfigsImplCopyWithImpl(
      _$StoreConfigsImpl _value, $Res Function(_$StoreConfigsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreConfigs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
    Object? defaultCurrency = null,
  }) {
    return _then(_$StoreConfigsImpl(
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<StoreCurrencyConfig>,
      defaultCurrency: null == defaultCurrency
          ? _value.defaultCurrency
          : defaultCurrency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreConfigsImpl implements _StoreConfigs {
  const _$StoreConfigsImpl(
      {required final List<StoreCurrencyConfig> currencies,
      required this.defaultCurrency})
      : _currencies = currencies;

  factory _$StoreConfigsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreConfigsImplFromJson(json);

  final List<StoreCurrencyConfig> _currencies;
  @override
  List<StoreCurrencyConfig> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  final int defaultCurrency;

  @override
  String toString() {
    return 'StoreConfigs(currencies: $currencies, defaultCurrency: $defaultCurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreConfigsImpl &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.defaultCurrency, defaultCurrency) ||
                other.defaultCurrency == defaultCurrency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_currencies), defaultCurrency);

  /// Create a copy of StoreConfigs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreConfigsImplCopyWith<_$StoreConfigsImpl> get copyWith =>
      __$$StoreConfigsImplCopyWithImpl<_$StoreConfigsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreConfigsImplToJson(
      this,
    );
  }
}

abstract class _StoreConfigs implements StoreConfigs {
  const factory _StoreConfigs(
      {required final List<StoreCurrencyConfig> currencies,
      required final int defaultCurrency}) = _$StoreConfigsImpl;

  factory _StoreConfigs.fromJson(Map<String, dynamic> json) =
      _$StoreConfigsImpl.fromJson;

  @override
  List<StoreCurrencyConfig> get currencies;
  @override
  int get defaultCurrency;

  /// Create a copy of StoreConfigs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreConfigsImplCopyWith<_$StoreConfigsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreCurrencyConfig _$StoreCurrencyConfigFromJson(Map<String, dynamic> json) {
  return _StoreCurrencyConfig.fromJson(json);
}

/// @nodoc
mixin _$StoreCurrencyConfig {
  String get code => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get precision => throw _privateConstructorUsedError;
  num get rate => throw _privateConstructorUsedError;

  /// Serializes this StoreCurrencyConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreCurrencyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreCurrencyConfigCopyWith<StoreCurrencyConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCurrencyConfigCopyWith<$Res> {
  factory $StoreCurrencyConfigCopyWith(
          StoreCurrencyConfig value, $Res Function(StoreCurrencyConfig) then) =
      _$StoreCurrencyConfigCopyWithImpl<$Res, StoreCurrencyConfig>;
  @useResult
  $Res call({String code, String symbol, int precision, num rate});
}

/// @nodoc
class _$StoreCurrencyConfigCopyWithImpl<$Res, $Val extends StoreCurrencyConfig>
    implements $StoreCurrencyConfigCopyWith<$Res> {
  _$StoreCurrencyConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreCurrencyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? precision = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      precision: null == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreCurrencyConfigImplCopyWith<$Res>
    implements $StoreCurrencyConfigCopyWith<$Res> {
  factory _$$StoreCurrencyConfigImplCopyWith(_$StoreCurrencyConfigImpl value,
          $Res Function(_$StoreCurrencyConfigImpl) then) =
      __$$StoreCurrencyConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String symbol, int precision, num rate});
}

/// @nodoc
class __$$StoreCurrencyConfigImplCopyWithImpl<$Res>
    extends _$StoreCurrencyConfigCopyWithImpl<$Res, _$StoreCurrencyConfigImpl>
    implements _$$StoreCurrencyConfigImplCopyWith<$Res> {
  __$$StoreCurrencyConfigImplCopyWithImpl(_$StoreCurrencyConfigImpl _value,
      $Res Function(_$StoreCurrencyConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreCurrencyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? precision = null,
    Object? rate = null,
  }) {
    return _then(_$StoreCurrencyConfigImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      precision: null == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreCurrencyConfigImpl implements _StoreCurrencyConfig {
  const _$StoreCurrencyConfigImpl(
      {required this.code,
      required this.symbol,
      required this.precision,
      required this.rate});

  factory _$StoreCurrencyConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreCurrencyConfigImplFromJson(json);

  @override
  final String code;
  @override
  final String symbol;
  @override
  final int precision;
  @override
  final num rate;

  @override
  String toString() {
    return 'StoreCurrencyConfig(code: $code, symbol: $symbol, precision: $precision, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreCurrencyConfigImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, symbol, precision, rate);

  /// Create a copy of StoreCurrencyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreCurrencyConfigImplCopyWith<_$StoreCurrencyConfigImpl> get copyWith =>
      __$$StoreCurrencyConfigImplCopyWithImpl<_$StoreCurrencyConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreCurrencyConfigImplToJson(
      this,
    );
  }
}

abstract class _StoreCurrencyConfig implements StoreCurrencyConfig {
  const factory _StoreCurrencyConfig(
      {required final String code,
      required final String symbol,
      required final int precision,
      required final num rate}) = _$StoreCurrencyConfigImpl;

  factory _StoreCurrencyConfig.fromJson(Map<String, dynamic> json) =
      _$StoreCurrencyConfigImpl.fromJson;

  @override
  String get code;
  @override
  String get symbol;
  @override
  int get precision;
  @override
  num get rate;

  /// Create a copy of StoreCurrencyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreCurrencyConfigImplCopyWith<_$StoreCurrencyConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
