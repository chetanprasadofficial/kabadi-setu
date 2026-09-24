// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'कबाड़ी सेतु';

  @override
  String get whoAreYou => 'आप कौन हैं?';

  @override
  String get chooseRole => 'जारी रखने के लिए अपनी भूमिका चुनें';

  @override
  String get imCollector => 'मैं एक संग्रहकर्ता हूं';

  @override
  String get collectorSubtitle => 'मैं स्क्रैप इकट्ठा करना और जोड़ना चाहता हूं';

  @override
  String get imRecycler => 'मैं एक रीसाइक्लर हूं';

  @override
  String get recyclerSubtitle => 'मुझे सत्यापित स्क्रैप प्राप्त करना है';

  @override
  String loggedInAs(Object role) {
    return '$role के रूप में लॉग इन';
  }

  @override
  String get whatToDo => 'आप क्या करना चाहते हैं?';

  @override
  String get capture => 'कैप्चर';

  @override
  String get value => 'मूल्य';

  @override
  String get connect => 'कनेक्ट';

  @override
  String get handover => 'हस्तांतरण';

  @override
  String get syncPay => 'सिंक और भुगतान';

  @override
  String get scrapCollected => 'एकत्रित स्क्रैप';

  @override
  String get earnings => 'कमाई';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get tagline =>
      'अनौपचारिक संग्रहकर्ता को औपचारिक पुनर्चक्रण श्रृंखला से जोड़ना';

  @override
  String get comingSoon => 'जल्द आ रहा है';
}
