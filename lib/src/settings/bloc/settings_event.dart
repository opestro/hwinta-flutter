part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  // set them mode
  const factory SettingsEvent.setTheme({
    ThemeMode? themeMode,
    Color? color,
  }) = _ThemeEvent;
  // toggle theme mode
  const factory SettingsEvent.toggleThemeMode() = _ToggleThemeMode;
  // toggleLocale
  const factory SettingsEvent.toggleLocale() = _ToggleLocale;
}
