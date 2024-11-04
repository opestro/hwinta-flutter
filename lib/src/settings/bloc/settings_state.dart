part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState implements _SettingsState {
  const SettingsState._();
  const factory SettingsState.initial({
    @Default(ThemeMode.system) ThemeMode themeMode,
    Color? color,
    @Default(Locale('ar')) Locale locale,
  }) = _Initial;
  const factory SettingsState.theme({
    ThemeMode? themeMode,
    Color? color,
    @Default(Locale('ar')) Locale locale,
  }) = _ThemeState;
  const factory SettingsState.locale({
    @Default(ThemeMode.system) ThemeMode themeMode,
    Color? color,
    required Locale locale,
  }) = _LocaleState;

  // getter for theme
  ThemeData get lightTheme => color == null ? getTheme(brightness: Brightness.light) : getTheme(brightness: Brightness.light, color: color!);
  ThemeData get darkTheme => color == null ? getTheme(brightness: Brightness.dark) : getTheme(brightness: Brightness.dark, color: color!);
  
}

abstract class _SettingsState {
  ThemeMode? get themeMode;
  Color? get color;
  Locale? get locale;
}
