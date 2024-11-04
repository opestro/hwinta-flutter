// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) {
  return _ProductVariant.fromJson(json);
}

/// @nodoc
mixin _$ProductVariant {
  String get name => throw _privateConstructorUsedError;
  List<ProductVariantOption> get options => throw _privateConstructorUsedError;

  /// Serializes this ProductVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantCopyWith<ProductVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantCopyWith<$Res> {
  factory $ProductVariantCopyWith(
          ProductVariant value, $Res Function(ProductVariant) then) =
      _$ProductVariantCopyWithImpl<$Res, ProductVariant>;
  @useResult
  $Res call({String name, List<ProductVariantOption> options});
}

/// @nodoc
class _$ProductVariantCopyWithImpl<$Res, $Val extends ProductVariant>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantImplCopyWith<$Res>
    implements $ProductVariantCopyWith<$Res> {
  factory _$$ProductVariantImplCopyWith(_$ProductVariantImpl value,
          $Res Function(_$ProductVariantImpl) then) =
      __$$ProductVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<ProductVariantOption> options});
}

/// @nodoc
class __$$ProductVariantImplCopyWithImpl<$Res>
    extends _$ProductVariantCopyWithImpl<$Res, _$ProductVariantImpl>
    implements _$$ProductVariantImplCopyWith<$Res> {
  __$$ProductVariantImplCopyWithImpl(
      _$ProductVariantImpl _value, $Res Function(_$ProductVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_$ProductVariantImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantImpl implements _ProductVariant {
  _$ProductVariantImpl(
      {this.name = "option",
      final List<ProductVariantOption> options = const []})
      : _options = options;

  factory _$ProductVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  final List<ProductVariantOption> _options;
  @override
  @JsonKey()
  List<ProductVariantOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductVariant(name: $name, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_options));

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantImplCopyWith<_$ProductVariantImpl> get copyWith =>
      __$$ProductVariantImplCopyWithImpl<_$ProductVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantImplToJson(
      this,
    );
  }
}

abstract class _ProductVariant implements ProductVariant {
  factory _ProductVariant(
      {final String name,
      final List<ProductVariantOption> options}) = _$ProductVariantImpl;

  factory _ProductVariant.fromJson(Map<String, dynamic> json) =
      _$ProductVariantImpl.fromJson;

  @override
  String get name;
  @override
  List<ProductVariantOption> get options;

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantImplCopyWith<_$ProductVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariantOption _$ProductVariantOptionFromJson(Map<String, dynamic> json) {
  return _ProductVariantOption.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantOption {
  String get name => throw _privateConstructorUsedError;
  VariantOptionType get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  ProductVariant? get child => throw _privateConstructorUsedError; //
  String? get sku => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  num? get stock => throw _privateConstructorUsedError;
  num? get sold => throw _privateConstructorUsedError;
  bool get mustSelectChild => throw _privateConstructorUsedError;

  /// Serializes this ProductVariantOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariantOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantOptionCopyWith<ProductVariantOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantOptionCopyWith<$Res> {
  factory $ProductVariantOptionCopyWith(ProductVariantOption value,
          $Res Function(ProductVariantOption) then) =
      _$ProductVariantOptionCopyWithImpl<$Res, ProductVariantOption>;
  @useResult
  $Res call(
      {String name,
      VariantOptionType type,
      dynamic value,
      ProductVariant? child,
      String? sku,
      num? price,
      num? discount,
      num? stock,
      num? sold,
      bool mustSelectChild});

  $ProductVariantCopyWith<$Res>? get child;
}

/// @nodoc
class _$ProductVariantOptionCopyWithImpl<$Res,
        $Val extends ProductVariantOption>
    implements $ProductVariantOptionCopyWith<$Res> {
  _$ProductVariantOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariantOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? value = freezed,
    Object? child = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? stock = freezed,
    Object? sold = freezed,
    Object? mustSelectChild = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VariantOptionType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as num?,
      mustSelectChild: null == mustSelectChild
          ? _value.mustSelectChild
          : mustSelectChild // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProductVariantOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductVariantCopyWith<$Res>? get child {
    if (_value.child == null) {
      return null;
    }

    return $ProductVariantCopyWith<$Res>(_value.child!, (value) {
      return _then(_value.copyWith(child: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductVariantOptionImplCopyWith<$Res>
    implements $ProductVariantOptionCopyWith<$Res> {
  factory _$$ProductVariantOptionImplCopyWith(_$ProductVariantOptionImpl value,
          $Res Function(_$ProductVariantOptionImpl) then) =
      __$$ProductVariantOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      VariantOptionType type,
      dynamic value,
      ProductVariant? child,
      String? sku,
      num? price,
      num? discount,
      num? stock,
      num? sold,
      bool mustSelectChild});

  @override
  $ProductVariantCopyWith<$Res>? get child;
}

/// @nodoc
class __$$ProductVariantOptionImplCopyWithImpl<$Res>
    extends _$ProductVariantOptionCopyWithImpl<$Res, _$ProductVariantOptionImpl>
    implements _$$ProductVariantOptionImplCopyWith<$Res> {
  __$$ProductVariantOptionImplCopyWithImpl(_$ProductVariantOptionImpl _value,
      $Res Function(_$ProductVariantOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariantOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? value = freezed,
    Object? child = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? stock = freezed,
    Object? sold = freezed,
    Object? mustSelectChild = null,
  }) {
    return _then(_$ProductVariantOptionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VariantOptionType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as ProductVariant?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as num?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as num?,
      mustSelectChild: null == mustSelectChild
          ? _value.mustSelectChild
          : mustSelectChild // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantOptionImpl implements _ProductVariantOption {
  _$ProductVariantOptionImpl(
      {required this.name,
      this.type = VariantOptionType.text,
      this.value,
      this.child,
      this.sku,
      this.price,
      this.discount,
      this.stock,
      this.sold,
      this.mustSelectChild = false});

  factory _$ProductVariantOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantOptionImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final VariantOptionType type;
  @override
  final dynamic value;
  @override
  final ProductVariant? child;
//
  @override
  final String? sku;
  @override
  final num? price;
  @override
  final num? discount;
  @override
  final num? stock;
  @override
  final num? sold;
  @override
  @JsonKey()
  final bool mustSelectChild;

  @override
  String toString() {
    return 'ProductVariantOption(name: $name, type: $type, value: $value, child: $child, sku: $sku, price: $price, discount: $discount, stock: $stock, sold: $sold, mustSelectChild: $mustSelectChild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantOptionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.mustSelectChild, mustSelectChild) ||
                other.mustSelectChild == mustSelectChild));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      const DeepCollectionEquality().hash(value),
      child,
      sku,
      price,
      discount,
      stock,
      sold,
      mustSelectChild);

  /// Create a copy of ProductVariantOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantOptionImplCopyWith<_$ProductVariantOptionImpl>
      get copyWith =>
          __$$ProductVariantOptionImplCopyWithImpl<_$ProductVariantOptionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantOptionImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantOption implements ProductVariantOption {
  factory _ProductVariantOption(
      {required final String name,
      final VariantOptionType type,
      final dynamic value,
      final ProductVariant? child,
      final String? sku,
      final num? price,
      final num? discount,
      final num? stock,
      final num? sold,
      final bool mustSelectChild}) = _$ProductVariantOptionImpl;

  factory _ProductVariantOption.fromJson(Map<String, dynamic> json) =
      _$ProductVariantOptionImpl.fromJson;

  @override
  String get name;
  @override
  VariantOptionType get type;
  @override
  dynamic get value;
  @override
  ProductVariant? get child; //
  @override
  String? get sku;
  @override
  num? get price;
  @override
  num? get discount;
  @override
  num? get stock;
  @override
  num? get sold;
  @override
  bool get mustSelectChild;

  /// Create a copy of ProductVariantOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantOptionImplCopyWith<_$ProductVariantOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
