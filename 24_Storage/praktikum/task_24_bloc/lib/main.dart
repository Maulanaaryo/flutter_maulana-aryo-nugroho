import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_24_bloc/bloc/register_bloc.dart';
import 'package:task_24_bloc/pages/home_page.dart';
import 'package:task_24_bloc/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => RegisterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const RegistrasiPage(),
          '/homepage': (context) => HomePage(),
        },
      ),
    );
  }
}