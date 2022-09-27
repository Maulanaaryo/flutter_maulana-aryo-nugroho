import 'package:flutter/material.dart';
import 'package:task_17/pages/add_person_page.dart';
import 'package:task_17/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        AddPersonPage.routeName:(context) => const AddPersonPage(),
      },
    );
  }
}