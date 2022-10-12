import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_24_provider/pages/home_page.dart';
import 'package:task_24_provider/pages/registrasi_page.dart';
import 'package:task_24_provider/provider/register_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => const RegistrasiPage(),
          '/homepage':(context) => HomePage(),
        },
      ),
    );
  }
}