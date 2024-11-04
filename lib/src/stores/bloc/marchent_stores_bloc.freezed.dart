// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marchent_stores_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarchentStoresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarchentStoresEventCopyWith<$Res> {
  factory $MarchentStoresEventCopyWith(
          MarchentStoresEvent value, $Res Function(MarchentStoresEvent) then) =
      _$MarchentStoresEventCopyWithImpl<$Res, MarchentStoresEvent>;
}

/// @nodoc
class _$MarchentStoresEventCopyWithImpl<$Res, $Val extends MarchentStoresEvent>
    implements $MarchentStoresEventCopyWith<$Res> {
  _$MarchentStoresEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'MarchentStoresEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements MarchentStoresEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$LoadSummaryImplCopyWith<$Res> {
  factory _$$LoadSummaryImplCopyWith(
          _$LoadSummaryImpl value, $Res Function(_$LoadSummaryImpl) then) =
      __$$LoadSummaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreSummary summary});

  $StoreSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$LoadSummaryImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$LoadSummaryImpl>
    implements _$$LoadSummaryImplCopyWith<$Res> {
  __$$LoadSummaryImplCopyWithImpl(
      _$LoadSummaryImpl _value, $Res Function(_$LoadSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
  }) {
    return _then(_$LoadSummaryImpl(
      null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as StoreSummary,
    ));
  }

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreSummaryCopyWith<$Res> get summary {
    return $StoreSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc

class _$LoadSummaryImpl implements _LoadSummary {
  const _$LoadSummaryImpl(this.summary);

  @override
  final StoreSummary summary;

  @override
  String toString() {
    return 'MarchentStoresEvent.setSummary(summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSummaryImpl &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSummaryImplCopyWith<_$LoadSummaryImpl> get copyWith =>
      __$$LoadSummaryImplCopyWithImpl<_$LoadSummaryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return setSummary(summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return setSummary?.call(summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (setSummary != null) {
      return setSummary(summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return setSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return setSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (setSummary != null) {
      return setSummary(this);
    }
    return orElse();
  }
}

abstract class _LoadSummary implements MarchentStoresEvent {
  const factory _LoadSummary(final StoreSummary summary) = _$LoadSummaryImpl;

  StoreSummary get summary;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSummaryImplCopyWith<_$LoadSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FindImplCopyWith<$Res> {
  factory _$$FindImplCopyWith(
          _$FindImpl value, $Res Function(_$FindImpl) then) =
      __$$FindImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String storeId});
}

/// @nodoc
class __$$FindImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$FindImpl>
    implements _$$FindImplCopyWith<$Res> {
  __$$FindImplCopyWithImpl(_$FindImpl _value, $Res Function(_$FindImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_$FindImpl(
      null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindImpl implements _Find {
  const _$FindImpl(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'MarchentStoresEvent.find(storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindImplCopyWith<_$FindImpl> get copyWith =>
      __$$FindImplCopyWithImpl<_$FindImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return find(storeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return find?.call(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (find != null) {
      return find(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return find(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return find?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (find != null) {
      return find(this);
    }
    return orElse();
  }
}

abstract class _Find implements MarchentStoresEvent {
  const factory _Find(final String storeId) = _$FindImpl;

  String get storeId;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindImplCopyWith<_$FindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? id,
      String? slug,
      String name,
      String? title,
      StoreDecoration? decoration,
      String? logoUrl,
      String? ondarkLogoUrl});

  $StoreDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = null,
    Object? title = freezed,
    Object? decoration = freezed,
    Object? logoUrl = freezed,
    Object? ondarkLogoUrl = freezed,
  }) {
    return _then(_$CreateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $StoreDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(
      {this.id,
      this.slug,
      required this.name,
      this.title,
      this.decoration,
      this.logoUrl,
      this.ondarkLogoUrl});

  @override
  final String? id;
  @override
  final String? slug;
  @override
  final String name;
  @override
  final String? title;
  @override
  final StoreDecoration? decoration;
  @override
  final String? logoUrl;
  @override
  final String? ondarkLogoUrl;

  @override
  String toString() {
    return 'MarchentStoresEvent.create(id: $id, slug: $slug, name: $name, title: $title, decoration: $decoration, logoUrl: $logoUrl, ondarkLogoUrl: $ondarkLogoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.ondarkLogoUrl, ondarkLogoUrl) ||
                other.ondarkLogoUrl == ondarkLogoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, slug, name, title, decoration, logoUrl, ondarkLogoUrl);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return create(id, slug, name, title, decoration, logoUrl, ondarkLogoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return create?.call(
        id, slug, name, title, decoration, logoUrl, ondarkLogoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(id, slug, name, title, decoration, logoUrl, ondarkLogoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements MarchentStoresEvent {
  const factory _Create(
      {final String? id,
      final String? slug,
      required final String name,
      final String? title,
      final StoreDecoration? decoration,
      final String? logoUrl,
      final String? ondarkLogoUrl}) = _$CreateImpl;

  String? get id;
  String? get slug;
  String get name;
  String? get title;
  StoreDecoration? get decoration;
  String? get logoUrl;
  String? get ondarkLogoUrl;

  /// Create a copy of MarchentStoresEvent
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
  $Res call({String id, StoreUpdate data});

  $StoreUpdateCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$UpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoreUpdate,
    ));
  }

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreUpdateCopyWith<$Res> get data {
    return $StoreUpdateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.id, required this.data});

  @override
  final String id;
  @override
  final StoreUpdate data;

  @override
  String toString() {
    return 'MarchentStoresEvent.update(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return update(id, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return update?.call(id, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements MarchentStoresEvent {
  const factory _Update(
      {required final String id,
      required final StoreUpdate data}) = _$UpdateImpl;

  String get id;
  StoreUpdate get data;

  /// Create a copy of MarchentStoresEvent
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
  $Res call({String storeId});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_$DeleteImpl(
      null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.storeId);

  @override
  final String storeId;

  @override
  String toString() {
    return 'MarchentStoresEvent.delete(storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return delete(storeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return delete?.call(storeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(storeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements MarchentStoresEvent {
  const factory _Delete(final String storeId) = _$DeleteImpl;

  String get storeId;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddShippingMethodImplCopyWith<$Res> {
  factory _$$AddShippingMethodImplCopyWith(_$AddShippingMethodImpl value,
          $Res Function(_$AddShippingMethodImpl) then) =
      __$$AddShippingMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShippingMethod shippingMethod});

  $ShippingMethodCopyWith<$Res> get shippingMethod;
}

/// @nodoc
class __$$AddShippingMethodImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$AddShippingMethodImpl>
    implements _$$AddShippingMethodImplCopyWith<$Res> {
  __$$AddShippingMethodImplCopyWithImpl(_$AddShippingMethodImpl _value,
      $Res Function(_$AddShippingMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingMethod = null,
  }) {
    return _then(_$AddShippingMethodImpl(
      null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as ShippingMethod,
    ));
  }

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingMethodCopyWith<$Res> get shippingMethod {
    return $ShippingMethodCopyWith<$Res>(_value.shippingMethod, (value) {
      return _then(_value.copyWith(shippingMethod: value));
    });
  }
}

/// @nodoc

class _$AddShippingMethodImpl implements _AddShippingMethod {
  const _$AddShippingMethodImpl(this.shippingMethod);

  @override
  final ShippingMethod shippingMethod;

  @override
  String toString() {
    return 'MarchentStoresEvent.addShippingMethod(shippingMethod: $shippingMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShippingMethodImpl &&
            (identical(other.shippingMethod, shippingMethod) ||
                other.shippingMethod == shippingMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shippingMethod);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShippingMethodImplCopyWith<_$AddShippingMethodImpl> get copyWith =>
      __$$AddShippingMethodImplCopyWithImpl<_$AddShippingMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return addShippingMethod(shippingMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return addShippingMethod?.call(shippingMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (addShippingMethod != null) {
      return addShippingMethod(shippingMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return addShippingMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return addShippingMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (addShippingMethod != null) {
      return addShippingMethod(this);
    }
    return orElse();
  }
}

abstract class _AddShippingMethod implements MarchentStoresEvent {
  const factory _AddShippingMethod(final ShippingMethod shippingMethod) =
      _$AddShippingMethodImpl;

  ShippingMethod get shippingMethod;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddShippingMethodImplCopyWith<_$AddShippingMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveShippingMethodImplCopyWith<$Res> {
  factory _$$RemoveShippingMethodImplCopyWith(_$RemoveShippingMethodImpl value,
          $Res Function(_$RemoveShippingMethodImpl) then) =
      __$$RemoveShippingMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveShippingMethodImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$RemoveShippingMethodImpl>
    implements _$$RemoveShippingMethodImplCopyWith<$Res> {
  __$$RemoveShippingMethodImplCopyWithImpl(_$RemoveShippingMethodImpl _value,
      $Res Function(_$RemoveShippingMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveShippingMethodImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveShippingMethodImpl implements _RemoveShippingMethod {
  const _$RemoveShippingMethodImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MarchentStoresEvent.removeShippingMethod(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveShippingMethodImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveShippingMethodImplCopyWith<_$RemoveShippingMethodImpl>
      get copyWith =>
          __$$RemoveShippingMethodImplCopyWithImpl<_$RemoveShippingMethodImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return removeShippingMethod(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return removeShippingMethod?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (removeShippingMethod != null) {
      return removeShippingMethod(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return removeShippingMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return removeShippingMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (removeShippingMethod != null) {
      return removeShippingMethod(this);
    }
    return orElse();
  }
}

abstract class _RemoveShippingMethod implements MarchentStoresEvent {
  const factory _RemoveShippingMethod(final String id) =
      _$RemoveShippingMethodImpl;

  String get id;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveShippingMethodImplCopyWith<_$RemoveShippingMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditShippingMethodImplCopyWith<$Res> {
  factory _$$EditShippingMethodImplCopyWith(_$EditShippingMethodImpl value,
          $Res Function(_$EditShippingMethodImpl) then) =
      __$$EditShippingMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, ShippingMethodUpdate data});

  $ShippingMethodUpdateCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditShippingMethodImplCopyWithImpl<$Res>
    extends _$MarchentStoresEventCopyWithImpl<$Res, _$EditShippingMethodImpl>
    implements _$$EditShippingMethodImplCopyWith<$Res> {
  __$$EditShippingMethodImplCopyWithImpl(_$EditShippingMethodImpl _value,
      $Res Function(_$EditShippingMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$EditShippingMethodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ShippingMethodUpdate,
    ));
  }

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingMethodUpdateCopyWith<$Res> get data {
    return $ShippingMethodUpdateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$EditShippingMethodImpl implements _EditShippingMethod {
  const _$EditShippingMethodImpl({required this.id, required this.data});

  @override
  final String id;
  @override
  final ShippingMethodUpdate data;

  @override
  String toString() {
    return 'MarchentStoresEvent.editShippingMethod(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditShippingMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditShippingMethodImplCopyWith<_$EditShippingMethodImpl> get copyWith =>
      __$$EditShippingMethodImplCopyWithImpl<_$EditShippingMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(StoreSummary summary) setSummary,
    required TResult Function(String storeId) find,
    required TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)
        create,
    required TResult Function(String id, StoreUpdate data) update,
    required TResult Function(String storeId) delete,
    required TResult Function(ShippingMethod shippingMethod) addShippingMethod,
    required TResult Function(String id) removeShippingMethod,
    required TResult Function(String id, ShippingMethodUpdate data)
        editShippingMethod,
  }) {
    return editShippingMethod(id, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(StoreSummary summary)? setSummary,
    TResult? Function(String storeId)? find,
    TResult? Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult? Function(String id, StoreUpdate data)? update,
    TResult? Function(String storeId)? delete,
    TResult? Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult? Function(String id)? removeShippingMethod,
    TResult? Function(String id, ShippingMethodUpdate data)? editShippingMethod,
  }) {
    return editShippingMethod?.call(id, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(StoreSummary summary)? setSummary,
    TResult Function(String storeId)? find,
    TResult Function(
            String? id,
            String? slug,
            String name,
            String? title,
            StoreDecoration? decoration,
            String? logoUrl,
            String? ondarkLogoUrl)?
        create,
    TResult Function(String id, StoreUpdate data)? update,
    TResult Function(String storeId)? delete,
    TResult Function(ShippingMethod shippingMethod)? addShippingMethod,
    TResult Function(String id)? removeShippingMethod,
    TResult Function(String id, ShippingMethodUpdate data)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (editShippingMethod != null) {
      return editShippingMethod(id, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadSummary value) setSummary,
    required TResult Function(_Find value) find,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_AddShippingMethod value) addShippingMethod,
    required TResult Function(_RemoveShippingMethod value) removeShippingMethod,
    required TResult Function(_EditShippingMethod value) editShippingMethod,
  }) {
    return editShippingMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadSummary value)? setSummary,
    TResult? Function(_Find value)? find,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_AddShippingMethod value)? addShippingMethod,
    TResult? Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult? Function(_EditShippingMethod value)? editShippingMethod,
  }) {
    return editShippingMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadSummary value)? setSummary,
    TResult Function(_Find value)? find,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_AddShippingMethod value)? addShippingMethod,
    TResult Function(_RemoveShippingMethod value)? removeShippingMethod,
    TResult Function(_EditShippingMethod value)? editShippingMethod,
    required TResult orElse(),
  }) {
    if (editShippingMethod != null) {
      return editShippingMethod(this);
    }
    return orElse();
  }
}

abstract class _EditShippingMethod implements MarchentStoresEvent {
  const factory _EditShippingMethod(
      {required final String id,
      required final ShippingMethodUpdate data}) = _$EditShippingMethodImpl;

  String get id;
  ShippingMethodUpdate get data;

  /// Create a copy of MarchentStoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditShippingMethodImplCopyWith<_$EditShippingMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
