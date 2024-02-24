import 'package:flutter/material.dart';
import 'package:flutter_for_dummies/pages/home_page.dart';
import 'package:flutter_for_dummies/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {'/settingspage': (context) => const SettingsPage(), '/homepage': (context) => const HomePage()},
    );
  }
}
