import 'package:flutter/material.dart';
import 'package:flutter_application_1/task2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const FlutterTimeDemo(),
    );
  }
}