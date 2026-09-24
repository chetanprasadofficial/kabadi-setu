import 'package:flutter/material.dart';
import '../models/app_module.dart';
import '../screens/capture_screen.dart';
import '../screens/value_screen.dart';
import '../screens/connect_screen.dart';
import '../screens/handover_screen.dart';
import '../screens/sync_pay_screen.dart';

final List<AppModule> appModules = [
  AppModule(
    titleKey: 'capture',
    icon: Icons.camera_alt,
    screenBuilder: (context) => const CaptureScreen(),
  ),
  AppModule(
    titleKey: 'value',
    icon: Icons.attach_money,
    screenBuilder: (context) => const ValueScreen(),
  ),
  AppModule(
    titleKey: 'connect',
    icon: Icons.people,
    screenBuilder: (context) => const ConnectScreen(),
  ),
  AppModule(
    titleKey: 'handover',
    icon: Icons.handshake,
    screenBuilder: (context) => const HandoverScreen(),
  ),
  AppModule(
    titleKey: 'syncPay',
    icon: Icons.sync,
    screenBuilder: (context) => const SyncPayScreen(),
  ),
];

final List<AppModule> collectorModules = [
  appModules[0],
  appModules[1],
  appModules[2],
  appModules[3],
  appModules[4],
];

final List<AppModule> recyclerModules = [
  appModules[3],
  appModules[4],
];