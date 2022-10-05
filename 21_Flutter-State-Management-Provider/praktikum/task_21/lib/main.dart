import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_21/page/home_page.dart';
import 'package:task_21/provider/contacts_provider.dart';

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
        home: HomePage(),
      ),
    );
  }
}
