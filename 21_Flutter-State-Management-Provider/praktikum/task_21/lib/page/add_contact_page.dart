import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_21/model/contact.dart';
import 'package:task_21/provider/contacts_provider.dart';
import 'package:uuid/uuid.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController inputName = TextEditingController();
  TextEditingController inputPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: inputName,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    label: Text('Name')),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Name!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: inputPhone,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.phone),
                  label: Text('Phone Number'),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Phone Number!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(40)),
                  onPressed: () {
                    setState(() {
                      formKey.currentState!.validate();
                    });
                    if (inputName.text.isEmpty || inputPhone.text.isEmpty) {
                      return;
                    }
                    final contactItem = ContactModel(
                      id: const Uuid().v1(),
                      name: inputName.text,
                      phone: inputPhone.text,
                    );
                    contactProvider.tambahContact(contactItem);
                    Navigator.pop(context);
                  },
                  child: const Text('CREATE CONTACT'))
            ],
          ),
        ),
      ),
    );
  }
}
