import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_weekly/weekly_3/project/contact.dart' as contact_store;

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
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
      body: ListView.builder(
        itemCount: contactProvider.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactProvider.contacts[index].name),
            subtitle: Text(contactProvider.contacts[index].email),
          );
        },
      ),
    );
  }
}
