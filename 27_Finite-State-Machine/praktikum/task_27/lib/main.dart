import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_27/pages/food_page.dart';
import 'package:task_27/pages/food_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodsViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FoodsPage(),
      ),
    );
  }
}
