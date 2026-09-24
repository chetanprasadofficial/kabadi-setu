import 'package:flutter/material.dart';
import '../models/app_module.dart';
import '../screens/capture_screen.dart';
import '../screens/value_screen.dart';
import '../screens/connect_screen.dart';
import '../screens/handover_screen.dart';
import '../screens/sync_pay_screen.dart';

final List<AppModule> appModules = [
  AppModule(
    title: 'Capture',
    icon: Icons.camera_alt,
    screenBuilder: (context) => const CaptureScreen(),
  ),
  AppModule(
    title: 'Value',
    icon: Icons.attach_money,
    screenBuilder: (context) => const ValueScreen(),
  ),
  AppModule(
    title: 'Connect',
    icon: Icons.people,
    screenBuilder: (context) => const ConnectScreen(),
  ),
  AppModule(
    title: 'Handover',
    icon: Icons.handshake,
    screenBuilder: (context) => const HandoverScreen(),
  ),
  AppModule(
    title: 'Sync & Pay',
    icon: Icons.sync,
    screenBuilder: (context) => const SyncPayScreen(),
  ),
];

// Collector handles the full pipeline: captures scrap from households,
// values it, connects with recyclers, hands over, and syncs payment.
final List<AppModule> collectorModules = [
  appModules[0], // Capture
  appModules[1], // Value
  appModules[2], // Connect
  appModules[3], // Handover
  appModules[4], // Sync & Pay
];

// Recycler is on the receiving end — confirms handover and payment sync.
final List<AppModule> recyclerModules = [
  appModules[3], // Handover
  appModules[4], // Sync & Pay
];