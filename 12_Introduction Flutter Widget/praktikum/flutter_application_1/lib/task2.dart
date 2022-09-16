import 'dart:async';

import 'package:flutter/material.dart';

class FlutterTimeDemo extends StatefulWidget {
  const FlutterTimeDemo({super.key});

  @override
  _FlutterTimeDemoState createState() => _FlutterTimeDemoState();
}

class _FlutterTimeDemoState extends State<FlutterTimeDemo> {
  late String _timeString;

  @override
  void initState() {
    _timeString =
        "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TIME'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _timeString,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void _getCurrentTime() {
    setState(() {
      _timeString =
          "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    });
  }
}
