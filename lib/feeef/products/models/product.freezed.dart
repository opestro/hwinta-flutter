// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  ProductDecoration? get decoration => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<String> get media => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  String? get shippingMethodId => throw _privateConstructorUsedError;
  EmbaddedCategory? get category => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num? get cost => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  num get stock => throw _privateConstructorUsedError;
  num get sold => throw _privateConstructorUsedError;
  num get views => throw _privateConstructorUsedError;
  num get likes => throw _privateConstructorUsedError;
  ProductVariant? get variant => throw _privateConstructorUsedError;
  num get dislikes => throw _privateConstructorUsedError;
  ProductStatus get status => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  DateTime? get blockedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String slug,
      ProductDecoration? decoration,
      String name,
      String? photoUrl,
      List<String> media,
      String storeId,
      String? shippingMethodId,
      EmbaddedCategory? category,
      String? title,
      String? description,
      String? body,
      String? sku,
      String? barcode,
      num price,
      num? cost,
      num? discount,
      num stock,
      num sold,
      num views,
      num likes,
      ProductVariant? variant,
      num dislikes,
      ProductStatus status,
      ProductType type,
      DateTime? verifiedAt,
      DateTime? blockedAt,
      Map<String, dynamic> metadata});

  $EmbaddedCategoryCopyWith<$Res>? get category;
  $ProductVariantCopyWith<$Res>? get variant;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? slug = null,
    Object? decoration = freezed,
    Object? name = null,
    Object? photoUrl = freezed,
    Object? media = null,
    Object? storeId = null,
    Object? shippingMethodId = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? body = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? price = null,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? stock = null,
    Object? sold = null,
    Object? views = null,
    Object? likes = null,
    Object? variant = freezed,
    Object? dislikes = null,
    Object? status = null,
    Object? type = null,
    Object? verifiedAt = freezed,
    Object? blockedAt = freezed,
    Object? metadata = null,
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
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ProductDecoration?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EmbaddedCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as num,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as num,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmbaddedCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $EmbaddedCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductVariantCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $ProductVariantCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String slug,
      ProductDecoration? decoration,
      String name,
      String? photoUrl,
      List<String> media,
      String storeId,
      String? shippingMethodId,
      EmbaddedCategory? category,
      String? title,
      String? description,
      String? body,
      String? sku,
      String? barcode,
      num price,
      num? cost,
      num? discount,
      num stock,
      num sold,
      num views,
      num likes,
      ProductVariant? variant,
      num dislikes,
      ProductStatus status,
      ProductType type,
      DateTime? verifiedAt,
      DateTime? blockedAt,
      Map<String, dynamic> metadata});

  @override
  $EmbaddedCategoryCopyWith<$Res>? get category;
  @override
  $ProductVariantCopyWith<$Res>? get variant;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? slug = null,
    Object? decoration = freezed,
    Object? name = null,
    Object? photoUrl = freezed,
    Object? media = null,
    Object? storeId = null,
    Object? shippingMethodId = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? body = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? price = null,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? stock = null,
    Object? sold = null,
    Object? views = null,
    Object? likes = null,
    Object? variant = freezed,
    Object? dislikes = null,
    Object? status = null,
    Object? type = null,
    Object? verifiedAt = freezed,
    Object? blockedAt = freezed,
    Object? metadata = null,
  }) {
    return _then(_$ProductImpl(
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
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ProductDecoration?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EmbaddedCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as num,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as num,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
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
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.slug,
      this.decoration,
      required this.name,
      this.photoUrl,
      required final List<String> media,
      required this.storeId,
      this.shippingMethodId,
      this.category,
      this.title,
      this.description,
      this.body,
      this.sku,
      this.barcode,
      required this.price,
      this.cost,
      this.discount,
      this.stock = 0,
      this.sold = 0,
      this.views = 0,
      this.likes = 0,
      this.variant,
      this.dislikes = 0,
      this.status = ProductStatus.draft,
      this.type = ProductType.physical,
      this.verifiedAt,
      this.blockedAt,
      final Map<String, dynamic> metadata = const {}})
      : _media = media,
        _metadata = metadata;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String slug;
  @override
  final ProductDecoration? decoration;
  @override
  final String name;
  @override
  final String? photoUrl;
  final List<String> _media;
  @override
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  final String storeId;
  @override
  final String? shippingMethodId;
  @override
  final EmbaddedCategory? category;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? body;
  @override
  final String? sku;
  @override
  final String? barcode;
  @override
  final num price;
  @override
  final num? cost;
  @override
  final num? discount;
  @override
  @JsonKey()
  final num stock;
  @override
  @JsonKey()
  final num sold;
  @override
  @JsonKey()
  final num views;
  @override
  @JsonKey()
  final num likes;
  @override
  final ProductVariant? variant;
  @override
  @JsonKey()
  final num dislikes;
  @override
  @JsonKey()
  final ProductStatus status;
  @override
  @JsonKey()
  final ProductType type;
  @override
  final DateTime? verifiedAt;
  @override
  final DateTime? blockedAt;
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
    return 'Product(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, decoration: $decoration, name: $name, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, sold: $sold, views: $views, likes: $likes, variant: $variant, dislikes: $dislikes, status: $status, type: $type, verifiedAt: $verifiedAt, blockedAt: $blockedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other.decoration, decoration) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.shippingMethodId, shippingMethodId) ||
                other.shippingMethodId == shippingMethodId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.dislikes, dislikes) ||
                other.dislikes == dislikes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.blockedAt, blockedAt) ||
                other.blockedAt == blockedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        slug,
        const DeepCollectionEquality().hash(decoration),
        name,
        photoUrl,
        const DeepCollectionEquality().hash(_media),
        storeId,
        shippingMethodId,
        category,
        title,
        description,
        body,
        sku,
        barcode,
        price,
        cost,
        discount,
        stock,
        sold,
        views,
        likes,
        variant,
        dislikes,
        status,
        type,
        verifiedAt,
        blockedAt,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String slug,
      final ProductDecoration? decoration,
      required final String name,
      final String? photoUrl,
      required final List<String> media,
      required final String storeId,
      final String? shippingMethodId,
      final EmbaddedCategory? category,
      final String? title,
      final String? description,
      final String? body,
      final String? sku,
      final String? barcode,
      required final num price,
      final num? cost,
      final num? discount,
      final num stock,
      final num sold,
      final num views,
      final num likes,
      final ProductVariant? variant,
      final num dislikes,
      final ProductStatus status,
      final ProductType type,
      final DateTime? verifiedAt,
      final DateTime? blockedAt,
      final Map<String, dynamic> metadata}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get slug;
  @override
  ProductDecoration? get decoration;
  @override
  String get name;
  @override
  String? get photoUrl;
  @override
  List<String> get media;
  @override
  String get storeId;
  @override
  String? get shippingMethodId;
  @override
  EmbaddedCategory? get category;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get body;
  @override
  String? get sku;
  @override
  String? get barcode;
  @override
  num get price;
  @override
  num? get cost;
  @override
  num? get discount;
  @override
  num get stock;
  @override
  num get sold;
  @override
  num get views;
  @override
  num get likes;
  @override
  ProductVariant? get variant;
  @override
  num get dislikes;
  @override
  ProductStatus get status;
  @override
  ProductType get type;
  @override
  DateTime? get verifiedAt;
  @override
  DateTime? get blockedAt;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCreate _$ProductCreateFromJson(Map<String, dynamic> json) {
  return _ProductCreate.fromJson(json);
}

/// @nodoc
mixin _$ProductCreate {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  ProductDecoration? get decoration => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<String> get media => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  String? get shippingMethodId => throw _privateConstructorUsedError;
  EmbaddedCategory? get category => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num? get cost => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  num get stock => throw _privateConstructorUsedError;
  ProductVariant? get variant => throw _privateConstructorUsedError;
  ProductStatus get status => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this ProductCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCreateCopyWith<ProductCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCreateCopyWith<$Res> {
  factory $ProductCreateCopyWith(
          ProductCreate value, $Res Function(ProductCreate) then) =
      _$ProductCreateCopyWithImpl<$Res, ProductCreate>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String slug,
      ProductDecoration? decoration,
      String? photoUrl,
      List<String> media,
      String storeId,
      String? shippingMethodId,
      EmbaddedCategory? category,
      String? title,
      String? description,
      String? body,
      String? sku,
      String? barcode,
      num price,
      num? cost,
      num? discount,
      num stock,
      ProductVariant? variant,
      ProductStatus status,
      ProductType type,
      Map<String, dynamic> metadata});

  $EmbaddedCategoryCopyWith<$Res>? get category;
  $ProductVariantCopyWith<$Res>? get variant;
}

/// @nodoc
class _$ProductCreateCopyWithImpl<$Res, $Val extends ProductCreate>
    implements $ProductCreateCopyWith<$Res> {
  _$ProductCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? decoration = freezed,
    Object? photoUrl = freezed,
    Object? media = null,
    Object? storeId = null,
    Object? shippingMethodId = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? body = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? price = null,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? stock = null,
    Object? variant = freezed,
    Object? status = null,
    Object? type = null,
    Object? metadata = null,
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
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ProductDecoration?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EmbaddedCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmbaddedCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $EmbaddedCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductVariantCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $ProductVariantCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCreateImplCopyWith<$Res>
    implements $ProductCreateCopyWith<$Res> {
  factory _$$ProductCreateImplCopyWith(
          _$ProductCreateImpl value, $Res Function(_$ProductCreateImpl) then) =
      __$$ProductCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String slug,
      ProductDecoration? decoration,
      String? photoUrl,
      List<String> media,
      String storeId,
      String? shippingMethodId,
      EmbaddedCategory? category,
      String? title,
      String? description,
      String? body,
      String? sku,
      String? barcode,
      num price,
      num? cost,
      num? discount,
      num stock,
      ProductVariant? variant,
      ProductStatus status,
      ProductType type,
      Map<String, dynamic> metadata});

  @override
  $EmbaddedCategoryCopyWith<$Res>? get category;
  @override
  $ProductVariantCopyWith<$Res>? get variant;
}

/// @nodoc
class __$$ProductCreateImplCopyWithImpl<$Res>
    extends _$ProductCreateCopyWithImpl<$Res, _$ProductCreateImpl>
    implements _$$ProductCreateImplCopyWith<$Res> {
  __$$ProductCreateImplCopyWithImpl(
      _$ProductCreateImpl _value, $Res Function(_$ProductCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? decoration = freezed,
    Object? photoUrl = freezed,
    Object? media = null,
    Object? storeId = null,
    Object? shippingMethodId = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? body = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? price = null,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? stock = null,
    Object? variant = freezed,
    Object? status = null,
    Object? type = null,
    Object? metadata = null,
  }) {
    return _then(_$ProductCreateImpl(
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
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ProductDecoration?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EmbaddedCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCreateImpl implements _ProductCreate {
  const _$ProductCreateImpl(
      {this.id,
      required this.name,
      required this.slug,
      this.decoration,
      this.photoUrl,
      required final List<String> media,
      required this.storeId,
      this.shippingMethodId,
      this.category,
      this.title,
      this.description,
      this.body,
      this.sku,
      this.barcode,
      required this.price,
      this.cost,
      this.discount,
      required this.stock,
      this.variant,
      this.status = ProductStatus.draft,
      this.type = ProductType.physical,
      final Map<String, dynamic> metadata = const {}})
      : _media = media,
        _metadata = metadata;

  factory _$ProductCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCreateImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final ProductDecoration? decoration;
  @override
  final String? photoUrl;
  final List<String> _media;
  @override
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  final String storeId;
  @override
  final String? shippingMethodId;
  @override
  final EmbaddedCategory? category;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? body;
  @override
  final String? sku;
  @override
  final String? barcode;
  @override
  final num price;
  @override
  final num? cost;
  @override
  final num? discount;
  @override
  final num stock;
  @override
  final ProductVariant? variant;
  @override
  @JsonKey()
  final ProductStatus status;
  @override
  @JsonKey()
  final ProductType type;
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
    return 'ProductCreate(id: $id, name: $name, slug: $slug, decoration: $decoration, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, variant: $variant, status: $status, type: $type, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other.decoration, decoration) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.shippingMethodId, shippingMethodId) ||
                other.shippingMethodId == shippingMethodId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        slug,
        const DeepCollectionEquality().hash(decoration),
        photoUrl,
        const DeepCollectionEquality().hash(_media),
        storeId,
        shippingMethodId,
        category,
        title,
        description,
        body,
        sku,
        barcode,
        price,
        cost,
        discount,
        stock,
        variant,
        status,
        type,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCreateImplCopyWith<_$ProductCreateImpl> get copyWith =>
      __$$ProductCreateImplCopyWithImpl<_$ProductCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCreateImplToJson(
      this,
    );
  }
}

abstract class _ProductCreate implements ProductCreate {
  const factory _ProductCreate(
      {final String? id,
      required final String name,
      required final String slug,
      final ProductDecoration? decoration,
      final String? photoUrl,
      required final List<String> media,
      required final String storeId,
      final String? shippingMethodId,
      final EmbaddedCategory? category,
      final String? title,
      final String? description,
      final String? body,
      final String? sku,
      final String? barcode,
      required final num price,
      final num? cost,
      final num? discount,
      required final num stock,
      final ProductVariant? variant,
      final ProductStatus status,
      final ProductType type,
      final Map<String, dynamic> metadata}) = _$ProductCreateImpl;

  factory _ProductCreate.fromJson(Map<String, dynamic> json) =
      _$ProductCreateImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  ProductDecoration? get decoration;
  @override
  String? get photoUrl;
  @override
  List<String> get media;
  @override
  String get storeId;
  @override
  String? get shippingMethodId;
  @override
  EmbaddedCategory? get category;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get body;
  @override
  String? get sku;
  @override
  String? get barcode;
  @override
  num get price;
  @override
  num? get cost;
  @override
  num? get discount;
  @override
  num get stock;
  @override
  ProductVariant? get variant;
  @override
  ProductStatus get status;
  @override
  ProductType get type;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of ProductCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCreateImplCopyWith<_$ProductCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductUpdate _$ProductUpdateFromJson(Map<String, dynamic> json) {
  return _ProductUpdate.fromJson(json);
}

/// @nodoc
mixin _$ProductUpdate {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  ProductDecoration? get decoration => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<String>? get media => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  String? get shippingMethodId => throw _privateConstructorUsedError;
  EmbaddedCategory? get category => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  num? get cost => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  num? get stock => throw _privateConstructorUsedError;
  ProductVariant? get variant => throw _privateConstructorUsedError;
  ProductStatus? get status => throw _privateConstructorUsedError;
  ProductType? get type => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  List<String> get setToNull => throw _privateConstructorUsedError;

  /// Serializes this ProductUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductUpdateCopyWith<ProductUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductUpdateCopyWith<$Res> {
  factory $ProductUpdateCopyWith(
          ProductUpdate value, $Res Function(ProductUpdate) then) =
      _$ProductUpdateCopyWithImpl<$Res, ProductUpdate>;
  @useResult
  $Res call(
      {String? name,
      String? slug,
      ProductDecoration? decoration,
      String? photoUrl,
      List<String>? media,
      String? storeId,
      String? shippingMethodId,
      EmbaddedCategory? category,
      String? title,
      String? description,
      String? body,
      String? sku,
      String? barcode,
      num? price,
      num? cost,
      num? discount,
      num? stock,
      ProductVariant? variant,
      ProductStatus? status,
      ProductType? type,
      Map<String, dynamic>? metadata,
      @JsonKey(includeFromJson: false) List<String> setToNull});

  $EmbaddedCategoryCopyWith<$Res>? get category;
  $ProductVariantCopyWith<$Res>? get variant;
}

/// @nodoc
class _$ProductUpdateCopyWithImpl<$Res, $Val extends ProductUpdate>
    implements $ProductUpdateCopyWith<$Res> {
  _$ProductUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? decoration = freezed,
    Object? photoUrl = freezed,
    Object? media = freezed,
    Object? storeId = freezed,
    Object? shippingMethodId = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? body = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? stock = freezed,
    Object? variant = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
    Object? setToNull = null,
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
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ProductDecoration?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EmbaddedCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      setToNull: null == setToNull
          ? _value.setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmbaddedCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $EmbaddedCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductVariantCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $ProductVariantCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductUpdateImplCopyWith<$Res>
    implements $ProductUpdateCopyWith<$Res> {
  factory _$$ProductUpdateImplCopyWith(
          _$ProductUpdateImpl value, $Res Function(_$ProductUpdateImpl) then) =
      __$$ProductUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? slug,
      ProductDecoration? decoration,
      String? photoUrl,
      List<String>? media,
      String? storeId,
      String? shippingMethodId,
      EmbaddedCategory? category,
      String? title,
      String? description,
      String? body,
      String? sku,
      String? barcode,
      num? price,
      num? cost,
      num? discount,
      num? stock,
      ProductVariant? variant,
      ProductStatus? status,
      ProductType? type,
      Map<String, dynamic>? metadata,
      @JsonKey(includeFromJson: false) List<String> setToNull});

  @override
  $EmbaddedCategoryCopyWith<$Res>? get category;
  @override
  $ProductVariantCopyWith<$Res>? get variant;
}

/// @nodoc
class __$$ProductUpdateImplCopyWithImpl<$Res>
    extends _$ProductUpdateCopyWithImpl<$Res, _$ProductUpdateImpl>
    implements _$$ProductUpdateImplCopyWith<$Res> {
  __$$ProductUpdateImplCopyWithImpl(
      _$ProductUpdateImpl _value, $Res Function(_$ProductUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? decoration = freezed,
    Object? photoUrl = freezed,
    Object? media = freezed,
    Object? storeId = freezed,
    Object? shippingMethodId = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? body = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? stock = freezed,
    Object? variant = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
    Object? setToNull = null,
  }) {
    return _then(_$ProductUpdateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      decoration: freezed == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ProductDecoration?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethodId: freezed == shippingMethodId
          ? _value.shippingMethodId
          : shippingMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EmbaddedCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      setToNull: null == setToNull
          ? _value._setToNull
          : setToNull // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductUpdateImpl implements _ProductUpdate {
  const _$ProductUpdateImpl(
      {this.name,
      this.slug,
      this.decoration,
      this.photoUrl,
      final List<String>? media,
      this.storeId,
      this.shippingMethodId,
      this.category,
      this.title,
      this.description,
      this.body,
      this.sku,
      this.barcode,
      this.price,
      this.cost,
      this.discount,
      this.stock,
      this.variant,
      this.status,
      this.type,
      final Map<String, dynamic>? metadata,
      @JsonKey(includeFromJson: false) final List<String> setToNull = const []})
      : _media = media,
        _metadata = metadata,
        _setToNull = setToNull;

  factory _$ProductUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductUpdateImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final ProductDecoration? decoration;
  @override
  final String? photoUrl;
  final List<String>? _media;
  @override
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? storeId;
  @override
  final String? shippingMethodId;
  @override
  final EmbaddedCategory? category;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? body;
  @override
  final String? sku;
  @override
  final String? barcode;
  @override
  final num? price;
  @override
  final num? cost;
  @override
  final num? discount;
  @override
  final num? stock;
  @override
  final ProductVariant? variant;
  @override
  final ProductStatus? status;
  @override
  final ProductType? type;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String> _setToNull;
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull {
    if (_setToNull is EqualUnmodifiableListView) return _setToNull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setToNull);
  }

  @override
  String toString() {
    return 'ProductUpdate(name: $name, slug: $slug, decoration: $decoration, photoUrl: $photoUrl, media: $media, storeId: $storeId, shippingMethodId: $shippingMethodId, category: $category, title: $title, description: $description, body: $body, sku: $sku, barcode: $barcode, price: $price, cost: $cost, discount: $discount, stock: $stock, variant: $variant, status: $status, type: $type, metadata: $metadata, setToNull: $setToNull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other.decoration, decoration) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.shippingMethodId, shippingMethodId) ||
                other.shippingMethodId == shippingMethodId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._setToNull, _setToNull));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        slug,
        const DeepCollectionEquality().hash(decoration),
        photoUrl,
        const DeepCollectionEquality().hash(_media),
        storeId,
        shippingMethodId,
        category,
        title,
        description,
        body,
        sku,
        barcode,
        price,
        cost,
        discount,
        stock,
        variant,
        status,
        type,
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(_setToNull)
      ]);

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductUpdateImplCopyWith<_$ProductUpdateImpl> get copyWith =>
      __$$ProductUpdateImplCopyWithImpl<_$ProductUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductUpdateImplToJson(
      this,
    );
  }
}

abstract class _ProductUpdate implements ProductUpdate {
  const factory _ProductUpdate(
          {final String? name,
          final String? slug,
          final ProductDecoration? decoration,
          final String? photoUrl,
          final List<String>? media,
          final String? storeId,
          final String? shippingMethodId,
          final EmbaddedCategory? category,
          final String? title,
          final String? description,
          final String? body,
          final String? sku,
          final String? barcode,
          final num? price,
          final num? cost,
          final num? discount,
          final num? stock,
          final ProductVariant? variant,
          final ProductStatus? status,
          final ProductType? type,
          final Map<String, dynamic>? metadata,
          @JsonKey(includeFromJson: false) final List<String> setToNull}) =
      _$ProductUpdateImpl;

  factory _ProductUpdate.fromJson(Map<String, dynamic> json) =
      _$ProductUpdateImpl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  ProductDecoration? get decoration;
  @override
  String? get photoUrl;
  @override
  List<String>? get media;
  @override
  String? get storeId;
  @override
  String? get shippingMethodId;
  @override
  EmbaddedCategory? get category;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get body;
  @override
  String? get sku;
  @override
  String? get barcode;
  @override
  num? get price;
  @override
  num? get cost;
  @override
  num? get discount;
  @override
  num? get stock;
  @override
  ProductVariant? get variant;
  @override
  ProductStatus? get status;
  @override
  ProductType? get type;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(includeFromJson: false)
  List<String> get setToNull;

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductUpdateImplCopyWith<_$ProductUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
