import 'package:flutter/material.dart';
import 'package:copy_task_1_dan_2/pages/task1.dart';
import 'package:flutter/cupertino.dart';
import 'package:copy_task_1_dan_2/pages/task2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Telegram(),
    );
    // return const CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HomePage(),
    // );
  }
}
