// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Kabadi Setu';

  @override
  String get whoAreYou => 'Who are you?';

  @override
  String get chooseRole => 'Choose your role to continue';

  @override
  String get imCollector => 'I\'m a Collector';

  @override
  String get collectorSubtitle => 'I want to collect and connect';

  @override
  String get imRecycler => 'I\'m a Recycler';

  @override
  String get recyclerSubtitle => 'I want to receive verified scrap';

  @override
  String loggedInAs(Object role) {
    return 'Logged in as $role';
  }

  @override
  String get whatToDo => 'What do you want to do?';

  @override
  String get capture => 'Capture';

  @override
  String get value => 'Value';

  @override
  String get connect => 'Connect';

  @override
  String get handover => 'Handover';

  @override
  String get syncPay => 'Sync & Pay';

  @override
  String get scrapCollected => 'Scrap Collected';

  @override
  String get earnings => 'Earnings';

  @override
  String get getStarted => 'Get Started';

  @override
  String get tagline =>
      'Bridging the informal collector into the formal recycling chain';

  @override
  String get comingSoon => 'Coming soon';
}
