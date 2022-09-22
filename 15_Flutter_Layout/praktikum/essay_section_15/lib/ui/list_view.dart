import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON ListView in Flutter'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green[700],
              child: Text(
                faker.person.firstName()[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(
              faker.person.name(),
              style: const TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              faker.phoneNumber.us(),
            ),
          );
        },
      ),
    );
  }
}
