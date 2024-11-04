// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() list,
    required TResult Function(
            String name, String description, double price, int stock)
        create,
    required TResult Function(
            String id, String name, String description, double price, int stock)
        update,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? list,
    TResult? Function(String name, String description, double price, int stock)?
        create,
    TResult? Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? list,
    TResult Function(String name, String description, double price, int stock)?
        create,
    TResult Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_List value) list,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_List value)? list,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_List value)? list,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() list,
    required TResult Function(
            String name, String description, double price, int stock)
        create,
    required TResult Function(
            String id, String name, String description, double price, int stock)
        update,
    required TResult Function(String id) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? list,
    TResult? Function(String name, String description, double price, int stock)?
        create,
    TResult? Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult? Function(String id)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? list,
    TResult Function(String name, String description, double price, int stock)?
        create,
    TResult Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_List value) list,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_List value)? list,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_List value)? list,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ListImplCopyWith<$Res> {
  factory _$$ListImplCopyWith(
          _$ListImpl value, $Res Function(_$ListImpl) then) =
      __$$ListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$ListImpl>
    implements _$$ListImplCopyWith<$Res> {
  __$$ListImplCopyWithImpl(_$ListImpl _value, $Res Function(_$ListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListImpl implements _List {
  const _$ListImpl();

  @override
  String toString() {
    return 'ProductsEvent.list()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() list,
    required TResult Function(
            String name, String description, double price, int stock)
        create,
    required TResult Function(
            String id, String name, String description, double price, int stock)
        update,
    required TResult Function(String id) delete,
  }) {
    return list();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? list,
    TResult? Function(String name, String description, double price, int stock)?
        create,
    TResult? Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult? Function(String id)? delete,
  }) {
    return list?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? list,
    TResult Function(String name, String description, double price, int stock)?
        create,
    TResult Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_List value) list,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_List value)? list,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_List value)? list,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _List implements ProductsEvent {
  const factory _List() = _$ListImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String description, double price, int stock});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? stock = null,
  }) {
    return _then(_$CreateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(
      {required this.name,
      required this.description,
      required this.price,
      required this.stock});

  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final int stock;

  @override
  String toString() {
    return 'ProductsEvent.create(name: $name, description: $description, price: $price, stock: $stock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, price, stock);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() list,
    required TResult Function(
            String name, String description, double price, int stock)
        create,
    required TResult Function(
            String id, String name, String description, double price, int stock)
        update,
    required TResult Function(String id) delete,
  }) {
    return create(name, description, price, stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? list,
    TResult? Function(String name, String description, double price, int stock)?
        create,
    TResult? Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult? Function(String id)? delete,
  }) {
    return create?.call(name, description, price, stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? list,
    TResult Function(String name, String description, double price, int stock)?
        create,
    TResult Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(name, description, price, stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_List value) list,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_List value)? list,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_List value)? list,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ProductsEvent {
  const factory _Create(
      {required final String name,
      required final String description,
      required final double price,
      required final int stock}) = _$CreateImpl;

  String get name;
  String get description;
  double get price;
  int get stock;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id, String name, String description, double price, int stock});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? stock = null,
  }) {
    return _then(_$UpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.stock});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final int stock;

  @override
  String toString() {
    return 'ProductsEvent.update(id: $id, name: $name, description: $description, price: $price, stock: $stock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, price, stock);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() list,
    required TResult Function(
            String name, String description, double price, int stock)
        create,
    required TResult Function(
            String id, String name, String description, double price, int stock)
        update,
    required TResult Function(String id) delete,
  }) {
    return update(id, name, description, price, stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? list,
    TResult? Function(String name, String description, double price, int stock)?
        create,
    TResult? Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult? Function(String id)? delete,
  }) {
    return update?.call(id, name, description, price, stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? list,
    TResult Function(String name, String description, double price, int stock)?
        create,
    TResult Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, name, description, price, stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_List value) list,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_List value)? list,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_List value)? list,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProductsEvent {
  const factory _Update(
      {required final String id,
      required final String name,
      required final String description,
      required final double price,
      required final int stock}) = _$UpdateImpl;

  String get id;
  String get name;
  String get description;
  double get price;
  int get stock;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProductsEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() list,
    required TResult Function(
            String name, String description, double price, int stock)
        create,
    required TResult Function(
            String id, String name, String description, double price, int stock)
        update,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? list,
    TResult? Function(String name, String description, double price, int stock)?
        create,
    TResult? Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? list,
    TResult Function(String name, String description, double price, int stock)?
        create,
    TResult Function(String id, String name, String description, double price,
            int stock)?
        update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_List value) list,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_List value)? list,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_List value)? list,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ProductsEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ListLoadingImplCopyWith<$Res> {
  factory _$$ListLoadingImplCopyWith(
          _$ListLoadingImpl value, $Res Function(_$ListLoadingImpl) then) =
      __$$ListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ListLoadingImpl>
    implements _$$ListLoadingImplCopyWith<$Res> {
  __$$ListLoadingImplCopyWithImpl(
      _$ListLoadingImpl _value, $Res Function(_$ListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListLoadingImpl implements _ListLoading {
  const _$ListLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.listLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return listLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return listLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (listLoading != null) {
      return listLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return listLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return listLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (listLoading != null) {
      return listLoading(this);
    }
    return orElse();
  }
}

abstract class _ListLoading implements ProductsState {
  const factory _ListLoading() = _$ListLoadingImpl;
}

/// @nodoc
abstract class _$$ListLoadedImplCopyWith<$Res> {
  factory _$$ListLoadedImplCopyWith(
          _$ListLoadedImpl value, $Res Function(_$ListLoadedImpl) then) =
      __$$ListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListResponse<Product> list});
}

/// @nodoc
class __$$ListLoadedImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ListLoadedImpl>
    implements _$$ListLoadedImplCopyWith<$Res> {
  __$$ListLoadedImplCopyWithImpl(
      _$ListLoadedImpl _value, $Res Function(_$ListLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ListLoadedImpl(
      null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListResponse<Product>,
    ));
  }
}

/// @nodoc

class _$ListLoadedImpl implements _ListLoaded {
  const _$ListLoadedImpl(this.list);

  @override
  final ListResponse<Product> list;

  @override
  String toString() {
    return 'ProductsState.listSuccess(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLoadedImpl &&
            (identical(other.list, list) || other.list == list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLoadedImplCopyWith<_$ListLoadedImpl> get copyWith =>
      __$$ListLoadedImplCopyWithImpl<_$ListLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return listSuccess(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return listSuccess?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (listSuccess != null) {
      return listSuccess(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return listSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return listSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (listSuccess != null) {
      return listSuccess(this);
    }
    return orElse();
  }
}

abstract class _ListLoaded implements ProductsState {
  const factory _ListLoaded(final ListResponse<Product> list) =
      _$ListLoadedImpl;

  ListResponse<Product> get list;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListLoadedImplCopyWith<_$ListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListErrorImplCopyWith<$Res> {
  factory _$$ListErrorImplCopyWith(
          _$ListErrorImpl value, $Res Function(_$ListErrorImpl) then) =
      __$$ListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ListErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ListErrorImpl>
    implements _$$ListErrorImplCopyWith<$Res> {
  __$$ListErrorImplCopyWithImpl(
      _$ListErrorImpl _value, $Res Function(_$ListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ListErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListErrorImpl implements _ListError {
  const _$ListErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.listError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListErrorImplCopyWith<_$ListErrorImpl> get copyWith =>
      __$$ListErrorImplCopyWithImpl<_$ListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return listError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return listError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (listError != null) {
      return listError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return listError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return listError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (listError != null) {
      return listError(this);
    }
    return orElse();
  }
}

abstract class _ListError implements ProductsState {
  const factory _ListError(final String message) = _$ListErrorImpl;

  String get message;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListErrorImplCopyWith<_$ListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateLoadingImplCopyWith<$Res> {
  factory _$$CreateLoadingImplCopyWith(
          _$CreateLoadingImpl value, $Res Function(_$CreateLoadingImpl) then) =
      __$$CreateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$CreateLoadingImpl>
    implements _$$CreateLoadingImplCopyWith<$Res> {
  __$$CreateLoadingImplCopyWithImpl(
      _$CreateLoadingImpl _value, $Res Function(_$CreateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateLoadingImpl implements _CreateLoading {
  const _$CreateLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.createLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return createLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return createLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (createLoading != null) {
      return createLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return createLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return createLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (createLoading != null) {
      return createLoading(this);
    }
    return orElse();
  }
}

abstract class _CreateLoading implements ProductsState {
  const factory _CreateLoading() = _$CreateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateSuccessImplCopyWith<$Res> {
  factory _$$CreateSuccessImplCopyWith(
          _$CreateSuccessImpl value, $Res Function(_$CreateSuccessImpl) then) =
      __$$CreateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$CreateSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$CreateSuccessImpl>
    implements _$$CreateSuccessImplCopyWith<$Res> {
  __$$CreateSuccessImplCopyWithImpl(
      _$CreateSuccessImpl _value, $Res Function(_$CreateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$CreateSuccessImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$CreateSuccessImpl implements _CreateSuccess {
  const _$CreateSuccessImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsState.createSuccess(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSuccessImplCopyWith<_$CreateSuccessImpl> get copyWith =>
      __$$CreateSuccessImplCopyWithImpl<_$CreateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return createSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return createSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements ProductsState {
  const factory _CreateSuccess(final Product product) = _$CreateSuccessImpl;

  Product get product;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSuccessImplCopyWith<_$CreateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateErrorImplCopyWith<$Res> {
  factory _$$CreateErrorImplCopyWith(
          _$CreateErrorImpl value, $Res Function(_$CreateErrorImpl) then) =
      __$$CreateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$CreateErrorImpl>
    implements _$$CreateErrorImplCopyWith<$Res> {
  __$$CreateErrorImplCopyWithImpl(
      _$CreateErrorImpl _value, $Res Function(_$CreateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateErrorImpl implements _CreateError {
  const _$CreateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.createError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateErrorImplCopyWith<_$CreateErrorImpl> get copyWith =>
      __$$CreateErrorImplCopyWithImpl<_$CreateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return createError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return createError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (createError != null) {
      return createError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return createError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return createError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (createError != null) {
      return createError(this);
    }
    return orElse();
  }
}

abstract class _CreateError implements ProductsState {
  const factory _CreateError(final String message) = _$CreateErrorImpl;

  String get message;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateErrorImplCopyWith<_$CreateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLoadingImplCopyWith<$Res> {
  factory _$$UpdateLoadingImplCopyWith(
          _$UpdateLoadingImpl value, $Res Function(_$UpdateLoadingImpl) then) =
      __$$UpdateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$UpdateLoadingImpl>
    implements _$$UpdateLoadingImplCopyWith<$Res> {
  __$$UpdateLoadingImplCopyWithImpl(
      _$UpdateLoadingImpl _value, $Res Function(_$UpdateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateLoadingImpl implements _UpdateLoading {
  const _$UpdateLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.updateLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return updateLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return updateLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (updateLoading != null) {
      return updateLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return updateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return updateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (updateLoading != null) {
      return updateLoading(this);
    }
    return orElse();
  }
}

abstract class _UpdateLoading implements ProductsState {
  const factory _UpdateLoading() = _$UpdateLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateSuccessImplCopyWith<$Res> {
  factory _$$UpdateSuccessImplCopyWith(
          _$UpdateSuccessImpl value, $Res Function(_$UpdateSuccessImpl) then) =
      __$$UpdateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$UpdateSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$UpdateSuccessImpl>
    implements _$$UpdateSuccessImplCopyWith<$Res> {
  __$$UpdateSuccessImplCopyWithImpl(
      _$UpdateSuccessImpl _value, $Res Function(_$UpdateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$UpdateSuccessImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$UpdateSuccessImpl implements _UpdateSuccess {
  const _$UpdateSuccessImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsState.updateSuccess(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSuccessImplCopyWith<_$UpdateSuccessImpl> get copyWith =>
      __$$UpdateSuccessImplCopyWithImpl<_$UpdateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return updateSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return updateSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements ProductsState {
  const factory _UpdateSuccess(final Product product) = _$UpdateSuccessImpl;

  Product get product;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSuccessImplCopyWith<_$UpdateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateErrorImplCopyWith<$Res> {
  factory _$$UpdateErrorImplCopyWith(
          _$UpdateErrorImpl value, $Res Function(_$UpdateErrorImpl) then) =
      __$$UpdateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$UpdateErrorImpl>
    implements _$$UpdateErrorImplCopyWith<$Res> {
  __$$UpdateErrorImplCopyWithImpl(
      _$UpdateErrorImpl _value, $Res Function(_$UpdateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateErrorImpl implements _UpdateError {
  const _$UpdateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.updateError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateErrorImplCopyWith<_$UpdateErrorImpl> get copyWith =>
      __$$UpdateErrorImplCopyWithImpl<_$UpdateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return updateError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return updateError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (updateError != null) {
      return updateError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return updateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return updateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (updateError != null) {
      return updateError(this);
    }
    return orElse();
  }
}

abstract class _UpdateError implements ProductsState {
  const factory _UpdateError(final String message) = _$UpdateErrorImpl;

  String get message;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateErrorImplCopyWith<_$UpdateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLoadingImplCopyWith<$Res> {
  factory _$$DeleteLoadingImplCopyWith(
          _$DeleteLoadingImpl value, $Res Function(_$DeleteLoadingImpl) then) =
      __$$DeleteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$DeleteLoadingImpl>
    implements _$$DeleteLoadingImplCopyWith<$Res> {
  __$$DeleteLoadingImplCopyWithImpl(
      _$DeleteLoadingImpl _value, $Res Function(_$DeleteLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteLoadingImpl implements _DeleteLoading {
  const _$DeleteLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.deleteLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return deleteLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return deleteLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteLoading != null) {
      return deleteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return deleteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return deleteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteLoading != null) {
      return deleteLoading(this);
    }
    return orElse();
  }
}

abstract class _DeleteLoading implements ProductsState {
  const factory _DeleteLoading() = _$DeleteLoadingImpl;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$DeleteSuccessImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductsState.deleteSuccess(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      __$$DeleteSuccessImplCopyWithImpl<_$DeleteSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return deleteSuccess(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return deleteSuccess?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ProductsState {
  const factory _DeleteSuccess(final String productId) = _$DeleteSuccessImpl;

  String get productId;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteErrorImplCopyWith<$Res> {
  factory _$$DeleteErrorImplCopyWith(
          _$DeleteErrorImpl value, $Res Function(_$DeleteErrorImpl) then) =
      __$$DeleteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$DeleteErrorImpl>
    implements _$$DeleteErrorImplCopyWith<$Res> {
  __$$DeleteErrorImplCopyWithImpl(
      _$DeleteErrorImpl _value, $Res Function(_$DeleteErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteErrorImpl implements _DeleteError {
  const _$DeleteErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsState.deleteError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteErrorImplCopyWith<_$DeleteErrorImpl> get copyWith =>
      __$$DeleteErrorImplCopyWithImpl<_$DeleteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(ListResponse<Product> list) listSuccess,
    required TResult Function(String message) listError,
    required TResult Function() createLoading,
    required TResult Function(Product product) createSuccess,
    required TResult Function(String message) createError,
    required TResult Function() updateLoading,
    required TResult Function(Product product) updateSuccess,
    required TResult Function(String message) updateError,
    required TResult Function() deleteLoading,
    required TResult Function(String productId) deleteSuccess,
    required TResult Function(String message) deleteError,
  }) {
    return deleteError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(ListResponse<Product> list)? listSuccess,
    TResult? Function(String message)? listError,
    TResult? Function()? createLoading,
    TResult? Function(Product product)? createSuccess,
    TResult? Function(String message)? createError,
    TResult? Function()? updateLoading,
    TResult? Function(Product product)? updateSuccess,
    TResult? Function(String message)? updateError,
    TResult? Function()? deleteLoading,
    TResult? Function(String productId)? deleteSuccess,
    TResult? Function(String message)? deleteError,
  }) {
    return deleteError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(ListResponse<Product> list)? listSuccess,
    TResult Function(String message)? listError,
    TResult Function()? createLoading,
    TResult Function(Product product)? createSuccess,
    TResult Function(String message)? createError,
    TResult Function()? updateLoading,
    TResult Function(Product product)? updateSuccess,
    TResult Function(String message)? updateError,
    TResult Function()? deleteLoading,
    TResult Function(String productId)? deleteSuccess,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListLoading value) listLoading,
    required TResult Function(_ListLoaded value) listSuccess,
    required TResult Function(_ListError value) listError,
    required TResult Function(_CreateLoading value) createLoading,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateError value) createError,
    required TResult Function(_UpdateLoading value) updateLoading,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateError value) updateError,
    required TResult Function(_DeleteLoading value) deleteLoading,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ListLoading value)? listLoading,
    TResult? Function(_ListLoaded value)? listSuccess,
    TResult? Function(_ListError value)? listError,
    TResult? Function(_CreateLoading value)? createLoading,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_CreateError value)? createError,
    TResult? Function(_UpdateLoading value)? updateLoading,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateError value)? updateError,
    TResult? Function(_DeleteLoading value)? deleteLoading,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListLoading value)? listLoading,
    TResult Function(_ListLoaded value)? listSuccess,
    TResult Function(_ListError value)? listError,
    TResult Function(_CreateLoading value)? createLoading,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateError value)? createError,
    TResult Function(_UpdateLoading value)? updateLoading,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateError value)? updateError,
    TResult Function(_DeleteLoading value)? deleteLoading,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class _DeleteError implements ProductsState {
  const factory _DeleteError(final String message) = _$DeleteErrorImpl;

  String get message;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteErrorImplCopyWith<_$DeleteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
