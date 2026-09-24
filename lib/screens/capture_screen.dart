import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class CaptureScreen extends StatelessWidget {
  const CaptureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.capture)),
      body: Center(child: Text(t.comingSoon)),
    );
  }
}