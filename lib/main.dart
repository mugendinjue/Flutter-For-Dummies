import 'package:flutter/material.dart';
import 'package:flutter_for_dummies/pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
