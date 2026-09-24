// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'कबाडी सेतू';

  @override
  String get whoAreYou => 'तुम्ही कोण आहात?';

  @override
  String get chooseRole => 'सुरू ठेवण्यासाठी तुमची भूमिका निवडा';

  @override
  String get imCollector => 'मी संकलक आहे';

  @override
  String get collectorSubtitle => 'मला भंगार गोळा करून जोडायचे आहे';

  @override
  String get imRecycler => 'मी पुनर्वापरकर्ता आहे';

  @override
  String get recyclerSubtitle => 'मला पडताळणी केलेला भंगार मिळवायचा आहे';

  @override
  String loggedInAs(Object role) {
    return '$role म्हणून लॉग इन केले';
  }

  @override
  String get whatToDo => 'तुम्हाला काय करायचे आहे?';

  @override
  String get capture => 'कॅप्चर';

  @override
  String get value => 'मूल्य';

  @override
  String get connect => 'कनेक्ट';

  @override
  String get handover => 'हस्तांतरण';

  @override
  String get syncPay => 'सिंक आणि पैसे द्या';

  @override
  String get scrapCollected => 'गोळा केलेला भंगार';

  @override
  String get earnings => 'कमाई';

  @override
  String get getStarted => 'सुरू करा';

  @override
  String get tagline => 'अनौपचारिक संकलकाला औपचारिक पुनर्वापर साखळीशी जोडणे';

  @override
  String get comingSoon => 'लवकरच येत आहे';
}
