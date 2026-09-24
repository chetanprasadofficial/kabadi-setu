import 'package:flutter/material.dart';

class AppModule {
  final String titleKey;
  final IconData icon;
  final Widget Function(BuildContext) screenBuilder;

  const AppModule({
    required this.titleKey,
    required this.icon,
    required this.screenBuilder,
  });
}