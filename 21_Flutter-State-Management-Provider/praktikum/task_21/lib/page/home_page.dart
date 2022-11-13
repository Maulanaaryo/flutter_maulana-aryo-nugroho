import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_21/provider/contacts_provider.dart';
import 'package:task_21/page/add_contact_page.dart';
import 'package:task_21/page/contact_page.dart';


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
            MaterialPageRoute(
              builder: (context) {
                return const AddContactPage();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
