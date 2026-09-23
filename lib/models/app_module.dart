import 'package:flutter/material.dart';

class AppModule {
  final String title;
  final IconData icon;
  final Widget Function(BuildContext) screenBuilder;

  const AppModule({
    required this.title,
    required this.icon,
    required this.screenBuilder,
  });
}