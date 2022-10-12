import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_24_provider/pages/registrasi_page.dart';
import 'package:task_24_provider/provider/register_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late SharedPreferences logindata;
  String username = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<RegisterProvider>(context);
    loginProvider.initial();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<RegisterProvider>(
              builder: (context, value, child) {
                return Text(
                  'Hello, ${value.username}',
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Consumer<RegisterProvider>(
              builder: (context, value, child) {
                return Text(value.email);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                loginProvider.deleteName(username);
                loginProvider.deleteEmail(email);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrasiPage(),
                    ));
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
