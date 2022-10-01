import 'package:flutter/material.dart';
import 'package:task_20/add_person.dart';
import 'package:task_20/contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: ContactScreen.routeName,
      // routes: {
      //   ContactScreen.routeName: (context) => const ContactScreen(),
      //   AddPersonPage.routeName:(context) => const AddPersonPage(),
      // },
      home: ContactScreen(),
    );
  }
}