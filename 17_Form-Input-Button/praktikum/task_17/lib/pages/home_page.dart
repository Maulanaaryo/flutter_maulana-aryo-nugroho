import 'package:flutter/material.dart';
import 'package:task_17/model/people.dart';
import 'package:task_17/pages/add_person_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Navigator.of(context)
              .pushNamed(AddPersonPage.routeName, arguments: addPerson);
        },
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}
