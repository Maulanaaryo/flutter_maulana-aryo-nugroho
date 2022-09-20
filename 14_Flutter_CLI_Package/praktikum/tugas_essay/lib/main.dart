import 'package:flutter/material.dart';
import 'package:tugas_essay/badges.dart';
import 'package:tugas_essay/barcode.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BarcodeScreen(),
      home: Badges(),
    );
  }
}