import 'package:flutter/material.dart';
import 'package:task_20/add_person.dart';
import 'package:task_20/model/people.dart';

class ContactScreen extends StatefulWidget {
  // static const routeName = '/contact';
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
        // onPressed: () {
        //   Navigator.of(context)
        //       .pushNamed(AddPersonPage.routeName, arguments: addPerson);
        // },
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
