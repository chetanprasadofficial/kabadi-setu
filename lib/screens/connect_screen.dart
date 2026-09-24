import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.connect)),
      body: Center(child: Text(t.comingSoon)),
    );
  }
}