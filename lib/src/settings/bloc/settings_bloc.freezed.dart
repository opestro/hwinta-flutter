// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode? themeMode, Color? color) setTheme,
    required TResult Function() toggleThemeMode,
    required TResult Function() toggleLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult? Function()? toggleThemeMode,
    TResult? Function()? toggleLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult Function()? toggleThemeMode,
    TResult Function()? toggleLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeEvent value) setTheme,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_ToggleLocale value) toggleLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeEvent value)? setTheme,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_ToggleLocale value)? toggleLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeEvent value)? setTheme,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_ToggleLocale value)? toggleLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
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
    extends _$SettingsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsEvent.started'));
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
    required TResult Function(ThemeMode? themeMode, Color? color) setTheme,
    required TResult Function() toggleThemeMode,
    required TResult Function() toggleLocale,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult? Function()? toggleThemeMode,
    TResult? Function()? toggleLocale,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult Function()? toggleThemeMode,
    TResult Function()? toggleLocale,
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
    required TResult Function(_ThemeEvent value) setTheme,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_ToggleLocale value) toggleLocale,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeEvent value)? setTheme,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_ToggleLocale value)? toggleLocale,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeEvent value)? setTheme,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_ToggleLocale value)? toggleLocale,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ThemeEventImplCopyWith<$Res> {
  factory _$$ThemeEventImplCopyWith(
          _$ThemeEventImpl value, $Res Function(_$ThemeEventImpl) then) =
      __$$ThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode? themeMode, Color? color});
}

/// @nodoc
class __$$ThemeEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ThemeEventImpl>
    implements _$$ThemeEventImplCopyWith<$Res> {
  __$$ThemeEventImplCopyWithImpl(
      _$ThemeEventImpl _value, $Res Function(_$ThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = freezed,
    Object? color = freezed,
  }) {
    return _then(_$ThemeEventImpl(
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$ThemeEventImpl with DiagnosticableTreeMixin implements _ThemeEvent {
  const _$ThemeEventImpl({this.themeMode, this.color});

  @override
  final ThemeMode? themeMode;
  @override
  final Color? color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.setTheme(themeMode: $themeMode, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.setTheme'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeEventImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, color);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeEventImplCopyWith<_$ThemeEventImpl> get copyWith =>
      __$$ThemeEventImplCopyWithImpl<_$ThemeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode? themeMode, Color? color) setTheme,
    required TResult Function() toggleThemeMode,
    required TResult Function() toggleLocale,
  }) {
    return setTheme(themeMode, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult? Function()? toggleThemeMode,
    TResult? Function()? toggleLocale,
  }) {
    return setTheme?.call(themeMode, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult Function()? toggleThemeMode,
    TResult Function()? toggleLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(themeMode, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeEvent value) setTheme,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_ToggleLocale value) toggleLocale,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeEvent value)? setTheme,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_ToggleLocale value)? toggleLocale,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeEvent value)? setTheme,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_ToggleLocale value)? toggleLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class _ThemeEvent implements SettingsEvent {
  const factory _ThemeEvent({final ThemeMode? themeMode, final Color? color}) =
      _$ThemeEventImpl;

  ThemeMode? get themeMode;
  Color? get color;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeEventImplCopyWith<_$ThemeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleThemeModeImplCopyWith<$Res> {
  factory _$$ToggleThemeModeImplCopyWith(_$ToggleThemeModeImpl value,
          $Res Function(_$ToggleThemeModeImpl) then) =
      __$$ToggleThemeModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleThemeModeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ToggleThemeModeImpl>
    implements _$$ToggleThemeModeImplCopyWith<$Res> {
  __$$ToggleThemeModeImplCopyWithImpl(
      _$ToggleThemeModeImpl _value, $Res Function(_$ToggleThemeModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleThemeModeImpl
    with DiagnosticableTreeMixin
    implements _ToggleThemeMode {
  const _$ToggleThemeModeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.toggleThemeMode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SettingsEvent.toggleThemeMode'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleThemeModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode? themeMode, Color? color) setTheme,
    required TResult Function() toggleThemeMode,
    required TResult Function() toggleLocale,
  }) {
    return toggleThemeMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult? Function()? toggleThemeMode,
    TResult? Function()? toggleLocale,
  }) {
    return toggleThemeMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult Function()? toggleThemeMode,
    TResult Function()? toggleLocale,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeEvent value) setTheme,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_ToggleLocale value) toggleLocale,
  }) {
    return toggleThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeEvent value)? setTheme,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_ToggleLocale value)? toggleLocale,
  }) {
    return toggleThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeEvent value)? setTheme,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_ToggleLocale value)? toggleLocale,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleThemeMode implements SettingsEvent {
  const factory _ToggleThemeMode() = _$ToggleThemeModeImpl;
}

/// @nodoc
abstract class _$$ToggleLocaleImplCopyWith<$Res> {
  factory _$$ToggleLocaleImplCopyWith(
          _$ToggleLocaleImpl value, $Res Function(_$ToggleLocaleImpl) then) =
      __$$ToggleLocaleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ToggleLocaleImpl>
    implements _$$ToggleLocaleImplCopyWith<$Res> {
  __$$ToggleLocaleImplCopyWithImpl(
      _$ToggleLocaleImpl _value, $Res Function(_$ToggleLocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleLocaleImpl with DiagnosticableTreeMixin implements _ToggleLocale {
  const _$ToggleLocaleImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.toggleLocale()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsEvent.toggleLocale'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleLocaleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode? themeMode, Color? color) setTheme,
    required TResult Function() toggleThemeMode,
    required TResult Function() toggleLocale,
  }) {
    return toggleLocale();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult? Function()? toggleThemeMode,
    TResult? Function()? toggleLocale,
  }) {
    return toggleLocale?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode? themeMode, Color? color)? setTheme,
    TResult Function()? toggleThemeMode,
    TResult Function()? toggleLocale,
    required TResult orElse(),
  }) {
    if (toggleLocale != null) {
      return toggleLocale();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeEvent value) setTheme,
    required TResult Function(_ToggleThemeMode value) toggleThemeMode,
    required TResult Function(_ToggleLocale value) toggleLocale,
  }) {
    return toggleLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeEvent value)? setTheme,
    TResult? Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult? Function(_ToggleLocale value)? toggleLocale,
  }) {
    return toggleLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeEvent value)? setTheme,
    TResult Function(_ToggleThemeMode value)? toggleThemeMode,
    TResult Function(_ToggleLocale value)? toggleLocale,
    required TResult orElse(),
  }) {
    if (toggleLocale != null) {
      return toggleLocale(this);
    }
    return orElse();
  }
}

abstract class _ToggleLocale implements SettingsEvent {
  const factory _ToggleLocale() = _$ToggleLocaleImpl;
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode? get themeMode => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        initial,
    required TResult Function(ThemeMode? themeMode, Color? color, Locale locale)
        theme,
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)?
        initial,
    TResult? Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? initial,
    TResult Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeState value) theme,
    required TResult Function(_LocaleState value) locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeState value)? theme,
    TResult? Function(_LocaleState value)? locale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeState value)? theme,
    TResult Function(_LocaleState value)? locale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({ThemeMode themeMode, Color? color, Locale locale});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = freezed,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode!
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, Color? color, Locale locale});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = freezed,
    Object? locale = null,
  }) {
    return _then(_$InitialImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl(
      {this.themeMode = ThemeMode.system,
      this.color,
      this.locale = const Locale('ar')})
      : super._();

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  final Color? color;
  @override
  @JsonKey()
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.initial(themeMode: $themeMode, color: $color, locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.initial'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, color, locale);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        initial,
    required TResult Function(ThemeMode? themeMode, Color? color, Locale locale)
        theme,
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        locale,
  }) {
    return initial(themeMode, color, this.locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)?
        initial,
    TResult? Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
  }) {
    return initial?.call(themeMode, color, this.locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? initial,
    TResult Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(themeMode, color, this.locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeState value) theme,
    required TResult Function(_LocaleState value) locale,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeState value)? theme,
    TResult? Function(_LocaleState value)? locale,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeState value)? theme,
    TResult Function(_LocaleState value)? locale,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SettingsState {
  const factory _Initial(
      {final ThemeMode themeMode,
      final Color? color,
      final Locale locale}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  ThemeMode get themeMode;
  @override
  Color? get color;
  @override
  Locale get locale;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$ThemeStateImplCopyWith(
          _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
      __$$ThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode? themeMode, Color? color, Locale locale});
}

/// @nodoc
class __$$ThemeStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$ThemeStateImpl>
    implements _$$ThemeStateImplCopyWith<$Res> {
  __$$ThemeStateImplCopyWithImpl(
      _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = freezed,
    Object? color = freezed,
    Object? locale = null,
  }) {
    return _then(_$ThemeStateImpl(
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ThemeStateImpl extends _ThemeState with DiagnosticableTreeMixin {
  const _$ThemeStateImpl(
      {this.themeMode, this.color, this.locale = const Locale('ar')})
      : super._();

  @override
  final ThemeMode? themeMode;
  @override
  final Color? color;
  @override
  @JsonKey()
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.theme(themeMode: $themeMode, color: $color, locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.theme'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, color, locale);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        initial,
    required TResult Function(ThemeMode? themeMode, Color? color, Locale locale)
        theme,
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        locale,
  }) {
    return theme(themeMode, color, this.locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)?
        initial,
    TResult? Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
  }) {
    return theme?.call(themeMode, color, this.locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? initial,
    TResult Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(themeMode, color, this.locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeState value) theme,
    required TResult Function(_LocaleState value) locale,
  }) {
    return theme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeState value)? theme,
    TResult? Function(_LocaleState value)? locale,
  }) {
    return theme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeState value)? theme,
    TResult Function(_LocaleState value)? locale,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this);
    }
    return orElse();
  }
}

abstract class _ThemeState extends SettingsState {
  const factory _ThemeState(
      {final ThemeMode? themeMode,
      final Color? color,
      final Locale locale}) = _$ThemeStateImpl;
  const _ThemeState._() : super._();

  @override
  ThemeMode? get themeMode;
  @override
  Color? get color;
  @override
  Locale get locale;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocaleStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$LocaleStateImplCopyWith(
          _$LocaleStateImpl value, $Res Function(_$LocaleStateImpl) then) =
      __$$LocaleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, Color? color, Locale locale});
}

/// @nodoc
class __$$LocaleStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$LocaleStateImpl>
    implements _$$LocaleStateImplCopyWith<$Res> {
  __$$LocaleStateImplCopyWithImpl(
      _$LocaleStateImpl _value, $Res Function(_$LocaleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = freezed,
    Object? locale = null,
  }) {
    return _then(_$LocaleStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleStateImpl extends _LocaleState with DiagnosticableTreeMixin {
  const _$LocaleStateImpl(
      {this.themeMode = ThemeMode.system, this.color, required this.locale})
      : super._();

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  final Color? color;
  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.locale(themeMode: $themeMode, color: $color, locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.locale'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, color, locale);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleStateImplCopyWith<_$LocaleStateImpl> get copyWith =>
      __$$LocaleStateImplCopyWithImpl<_$LocaleStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        initial,
    required TResult Function(ThemeMode? themeMode, Color? color, Locale locale)
        theme,
    required TResult Function(ThemeMode themeMode, Color? color, Locale locale)
        locale,
  }) {
    return locale(themeMode, color, this.locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)?
        initial,
    TResult? Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult? Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
  }) {
    return locale?.call(themeMode, color, this.locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? initial,
    TResult Function(ThemeMode? themeMode, Color? color, Locale locale)? theme,
    TResult Function(ThemeMode themeMode, Color? color, Locale locale)? locale,
    required TResult orElse(),
  }) {
    if (locale != null) {
      return locale(themeMode, color, this.locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeState value) theme,
    required TResult Function(_LocaleState value) locale,
  }) {
    return locale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeState value)? theme,
    TResult? Function(_LocaleState value)? locale,
  }) {
    return locale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeState value)? theme,
    TResult Function(_LocaleState value)? locale,
    required TResult orElse(),
  }) {
    if (locale != null) {
      return locale(this);
    }
    return orElse();
  }
}

abstract class _LocaleState extends SettingsState {
  const factory _LocaleState(
      {final ThemeMode themeMode,
      final Color? color,
      required final Locale locale}) = _$LocaleStateImpl;
  const _LocaleState._() : super._();

  @override
  ThemeMode get themeMode;
  @override
  Color? get color;
  @override
  Locale get locale;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocaleStateImplCopyWith<_$LocaleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
