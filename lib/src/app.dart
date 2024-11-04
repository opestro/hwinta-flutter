import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'router.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      restorationScopeId: 'app',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates
      ],
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: settings.locale,
      onGenerateTitle: (BuildContext context) => t.appName,
      theme: settings.lightTheme,
      darkTheme: settings.darkTheme,
      themeMode: settings.themeMode,
    );
  }
}
