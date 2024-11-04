import 'package:bloc/bloc.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/core/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    Locale locale = const Locale("ar", "DZ"),
    ThemeMode? themeMode,
    Color color = Colors.green,
  }) : super(_Initial(color: color, locale: locale)) {
    on<SettingsEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<_ThemeEvent>(_onSetTheme);
    on<_ToggleThemeMode>(_onToggleThemeMode);
    // toggleLocale
    on<_ToggleLocale>(_onToggleLocale);
  }

  void _onSetTheme(_ThemeEvent event, Emitter<SettingsState> emit) {
    emit(SettingsState.theme(
      themeMode: event.themeMode ?? state.themeMode,
      color: event.color ?? state.color,
      locale: state.locale,
    ));
  }

  void _onToggleThemeMode(_ToggleThemeMode event, Emitter<SettingsState> emit) {
    emit(SettingsState.theme(
      color: state.color,
      themeMode: state.themeMode == ThemeMode.system
          ? ThemeMode.light
          : state.themeMode == ThemeMode.light
              ? ThemeMode.dark
              : ThemeMode.system,
      locale: state.locale,
    ));
  }

  void _onToggleLocale(_ToggleLocale event, Emitter<SettingsState> emit) {
    emit(SettingsState.locale(
      locale: state.locale == const Locale('ar') ? const Locale('en') : const Locale('ar'),
    ));
    LocaleSettings.setLocale(state.locale.languageCode == "ar" ? AppLocale.ar : AppLocale.en);
  }
}
