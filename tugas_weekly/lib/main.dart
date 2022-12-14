import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_weekly/weekly_1/project/home_screen.dart';
import 'package:tugas_weekly/weekly_3/project/contact.dart' as contact_store;

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => contact_store.Contact(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
