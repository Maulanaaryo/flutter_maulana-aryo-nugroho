import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/contacts_provider.dart';
import 'add_contact_page.dart';
import 'contact_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ), 
      ),
      body: Consumer<Contact>(
        builder: (context, contact, child) {
          if (contact.contacts.isNotEmpty) {
            return ContactPage(contact: contact);
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.people),
                  Text('Your contact is empty')
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            // MaterialPageRoute(
            //   builder: (context) {
            //     return const AddContactPage();
            //   },
            // ),
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const AddContactPage();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                );
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}