// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploader_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, List<String>? urls) uploading,
    required TResult Function(List<String> urls) uploaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, List<String>? urls)? uploading,
    TResult? Function(List<String> urls)? uploaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, List<String>? urls)? uploading,
    TResult Function(List<String> urls)? uploaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploaderInitialState value) initial,
    required TResult Function(UploaderUploadingState value) uploading,
    required TResult Function(UploaderUploadedState value) uploaded,
    required TResult Function(UploaderErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploaderInitialState value)? initial,
    TResult? Function(UploaderUploadingState value)? uploading,
    TResult? Function(UploaderUploadedState value)? uploaded,
    TResult? Function(UploaderErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploaderInitialState value)? initial,
    TResult Function(UploaderUploadingState value)? uploading,
    TResult Function(UploaderUploadedState value)? uploaded,
    TResult Function(UploaderErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploaderStateCopyWith<$Res> {
  factory $UploaderStateCopyWith(
          UploaderState value, $Res Function(UploaderState) then) =
      _$UploaderStateCopyWithImpl<$Res, UploaderState>;
}

/// @nodoc
class _$UploaderStateCopyWithImpl<$Res, $Val extends UploaderState>
    implements $UploaderStateCopyWith<$Res> {
  _$UploaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UploaderInitialStateImplCopyWith<$Res> {
  factory _$$UploaderInitialStateImplCopyWith(_$UploaderInitialStateImpl value,
          $Res Function(_$UploaderInitialStateImpl) then) =
      __$$UploaderInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploaderInitialStateImplCopyWithImpl<$Res>
    extends _$UploaderStateCopyWithImpl<$Res, _$UploaderInitialStateImpl>
    implements _$$UploaderInitialStateImplCopyWith<$Res> {
  __$$UploaderInitialStateImplCopyWithImpl(_$UploaderInitialStateImpl _value,
      $Res Function(_$UploaderInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploaderInitialStateImpl implements UploaderInitialState {
  const _$UploaderInitialStateImpl();

  @override
  String toString() {
    return 'UploaderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, List<String>? urls) uploading,
    required TResult Function(List<String> urls) uploaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, List<String>? urls)? uploading,
    TResult? Function(List<String> urls)? uploaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, List<String>? urls)? uploading,
    TResult Function(List<String> urls)? uploaded,
    TResult Function(String message)? error,
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
    required TResult Function(UploaderInitialState value) initial,
    required TResult Function(UploaderUploadingState value) uploading,
    required TResult Function(UploaderUploadedState value) uploaded,
    required TResult Function(UploaderErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploaderInitialState value)? initial,
    TResult? Function(UploaderUploadingState value)? uploading,
    TResult? Function(UploaderUploadedState value)? uploaded,
    TResult? Function(UploaderErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploaderInitialState value)? initial,
    TResult Function(UploaderUploadingState value)? uploading,
    TResult Function(UploaderUploadedState value)? uploaded,
    TResult Function(UploaderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UploaderInitialState implements UploaderState {
  const factory UploaderInitialState() = _$UploaderInitialStateImpl;
}

/// @nodoc
abstract class _$$UploaderUploadingStateImplCopyWith<$Res> {
  factory _$$UploaderUploadingStateImplCopyWith(
          _$UploaderUploadingStateImpl value,
          $Res Function(_$UploaderUploadingStateImpl) then) =
      __$$UploaderUploadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress, List<String>? urls});
}

/// @nodoc
class __$$UploaderUploadingStateImplCopyWithImpl<$Res>
    extends _$UploaderStateCopyWithImpl<$Res, _$UploaderUploadingStateImpl>
    implements _$$UploaderUploadingStateImplCopyWith<$Res> {
  __$$UploaderUploadingStateImplCopyWithImpl(
      _$UploaderUploadingStateImpl _value,
      $Res Function(_$UploaderUploadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? urls = freezed,
  }) {
    return _then(_$UploaderUploadingStateImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      urls: freezed == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$UploaderUploadingStateImpl implements UploaderUploadingState {
  const _$UploaderUploadingStateImpl(
      {required this.progress, final List<String>? urls})
      : _urls = urls;

  @override
  final double progress;
  final List<String>? _urls;
  @override
  List<String>? get urls {
    final value = _urls;
    if (value == null) return null;
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UploaderState.uploading(progress: $progress, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderUploadingStateImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, progress, const DeepCollectionEquality().hash(_urls));

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderUploadingStateImplCopyWith<_$UploaderUploadingStateImpl>
      get copyWith => __$$UploaderUploadingStateImplCopyWithImpl<
          _$UploaderUploadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, List<String>? urls) uploading,
    required TResult Function(List<String> urls) uploaded,
    required TResult Function(String message) error,
  }) {
    return uploading(progress, urls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, List<String>? urls)? uploading,
    TResult? Function(List<String> urls)? uploaded,
    TResult? Function(String message)? error,
  }) {
    return uploading?.call(progress, urls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, List<String>? urls)? uploading,
    TResult Function(List<String> urls)? uploaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(progress, urls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploaderInitialState value) initial,
    required TResult Function(UploaderUploadingState value) uploading,
    required TResult Function(UploaderUploadedState value) uploaded,
    required TResult Function(UploaderErrorState value) error,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploaderInitialState value)? initial,
    TResult? Function(UploaderUploadingState value)? uploading,
    TResult? Function(UploaderUploadedState value)? uploaded,
    TResult? Function(UploaderErrorState value)? error,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploaderInitialState value)? initial,
    TResult Function(UploaderUploadingState value)? uploading,
    TResult Function(UploaderUploadedState value)? uploaded,
    TResult Function(UploaderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class UploaderUploadingState implements UploaderState {
  const factory UploaderUploadingState(
      {required final double progress,
      final List<String>? urls}) = _$UploaderUploadingStateImpl;

  double get progress;
  List<String>? get urls;

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploaderUploadingStateImplCopyWith<_$UploaderUploadingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploaderUploadedStateImplCopyWith<$Res> {
  factory _$$UploaderUploadedStateImplCopyWith(
          _$UploaderUploadedStateImpl value,
          $Res Function(_$UploaderUploadedStateImpl) then) =
      __$$UploaderUploadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> urls});
}

/// @nodoc
class __$$UploaderUploadedStateImplCopyWithImpl<$Res>
    extends _$UploaderStateCopyWithImpl<$Res, _$UploaderUploadedStateImpl>
    implements _$$UploaderUploadedStateImplCopyWith<$Res> {
  __$$UploaderUploadedStateImplCopyWithImpl(_$UploaderUploadedStateImpl _value,
      $Res Function(_$UploaderUploadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
  }) {
    return _then(_$UploaderUploadedStateImpl(
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UploaderUploadedStateImpl implements UploaderUploadedState {
  const _$UploaderUploadedStateImpl({required final List<String> urls})
      : _urls = urls;

  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'UploaderState.uploaded(urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderUploadedStateImpl &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urls));

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderUploadedStateImplCopyWith<_$UploaderUploadedStateImpl>
      get copyWith => __$$UploaderUploadedStateImplCopyWithImpl<
          _$UploaderUploadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, List<String>? urls) uploading,
    required TResult Function(List<String> urls) uploaded,
    required TResult Function(String message) error,
  }) {
    return uploaded(urls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, List<String>? urls)? uploading,
    TResult? Function(List<String> urls)? uploaded,
    TResult? Function(String message)? error,
  }) {
    return uploaded?.call(urls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, List<String>? urls)? uploading,
    TResult Function(List<String> urls)? uploaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(urls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploaderInitialState value) initial,
    required TResult Function(UploaderUploadingState value) uploading,
    required TResult Function(UploaderUploadedState value) uploaded,
    required TResult Function(UploaderErrorState value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploaderInitialState value)? initial,
    TResult? Function(UploaderUploadingState value)? uploading,
    TResult? Function(UploaderUploadedState value)? uploaded,
    TResult? Function(UploaderErrorState value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploaderInitialState value)? initial,
    TResult Function(UploaderUploadingState value)? uploading,
    TResult Function(UploaderUploadedState value)? uploaded,
    TResult Function(UploaderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class UploaderUploadedState implements UploaderState {
  const factory UploaderUploadedState({required final List<String> urls}) =
      _$UploaderUploadedStateImpl;

  List<String> get urls;

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploaderUploadedStateImplCopyWith<_$UploaderUploadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploaderErrorStateImplCopyWith<$Res> {
  factory _$$UploaderErrorStateImplCopyWith(_$UploaderErrorStateImpl value,
          $Res Function(_$UploaderErrorStateImpl) then) =
      __$$UploaderErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UploaderErrorStateImplCopyWithImpl<$Res>
    extends _$UploaderStateCopyWithImpl<$Res, _$UploaderErrorStateImpl>
    implements _$$UploaderErrorStateImplCopyWith<$Res> {
  __$$UploaderErrorStateImplCopyWithImpl(_$UploaderErrorStateImpl _value,
      $Res Function(_$UploaderErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UploaderErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploaderErrorStateImpl implements UploaderErrorState {
  const _$UploaderErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UploaderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderErrorStateImplCopyWith<_$UploaderErrorStateImpl> get copyWith =>
      __$$UploaderErrorStateImplCopyWithImpl<_$UploaderErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress, List<String>? urls) uploading,
    required TResult Function(List<String> urls) uploaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress, List<String>? urls)? uploading,
    TResult? Function(List<String> urls)? uploaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress, List<String>? urls)? uploading,
    TResult Function(List<String> urls)? uploaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploaderInitialState value) initial,
    required TResult Function(UploaderUploadingState value) uploading,
    required TResult Function(UploaderUploadedState value) uploaded,
    required TResult Function(UploaderErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploaderInitialState value)? initial,
    TResult? Function(UploaderUploadingState value)? uploading,
    TResult? Function(UploaderUploadedState value)? uploaded,
    TResult? Function(UploaderErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploaderInitialState value)? initial,
    TResult Function(UploaderUploadingState value)? uploading,
    TResult Function(UploaderUploadedState value)? uploaded,
    TResult Function(UploaderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UploaderErrorState implements UploaderState {
  const factory UploaderErrorState({required final String message}) =
      _$UploaderErrorStateImpl;

  String get message;

  /// Create a copy of UploaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploaderErrorStateImplCopyWith<_$UploaderErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
