import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class SyncPayScreen extends StatelessWidget {
  const SyncPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.syncPay)),
      body: Center(child: Text(t.comingSoon)),
    );
  }
}