import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const KabadiSetuApp());
}

class KabadiSetuApp extends StatelessWidget {
  const KabadiSetuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kabadi Setu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}