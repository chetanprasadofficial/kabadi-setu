import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class HandoverScreen extends StatelessWidget {
  const HandoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.handover)),
      body: Center(child: Text(t.comingSoon)),
    );
  }
}