import 'package:flutter/material.dart';

import '../models/person.dart';
import '../widgets/add_contact_widget.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactPage> {
  void addPerson(Person person) {
    setState(() {
      personList.add(person);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            color: Colors.grey,
          ),
          itemCount: personList.length,
          itemBuilder: (context, index) {
            final person = personList[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(person.imageAsset),
              ),
              title: Text(
                person.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                person.phone,
                style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddPersonPage(),
            ),
          );
        },
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}