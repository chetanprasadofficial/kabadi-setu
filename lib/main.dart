import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'screens/splash_screen.dart';

final ValueNotifier<Locale> localeNotifier = ValueNotifier(const Locale('mr'));

void main() {
  runApp(const KabadiSetuApp());
}

class KabadiSetuApp extends StatelessWidget {
  const KabadiSetuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (context, locale, _) {
        return MaterialApp(
          title: 'Kabadi Setu',
          debugShowCheckedModeBanner: false,
          locale: locale,
          supportedLocales: const [
            Locale('mr'),
            Locale('hi'),
            Locale('en'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: ThemeData(
            primarySwatch: Colors.green,
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}