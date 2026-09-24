import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class ValueScreen extends StatelessWidget {
  const ValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.value)),
      body: Center(child: Text(t.comingSoon)),
    );
  }
}