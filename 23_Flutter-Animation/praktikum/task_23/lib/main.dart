import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_23/bottom_bar.dart';
import 'task_02/provider/contacts_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Contact(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomBar(),
      ),
    );
  }
}
