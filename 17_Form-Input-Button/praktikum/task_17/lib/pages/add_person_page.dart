import 'package:flutter/material.dart';

class AddPersonPage extends StatefulWidget {
  static const routeName = 'addPerson';
  const AddPersonPage({super.key});

  @override
  State<AddPersonPage> createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddPersonPage> {
  final formKey = GlobalKey<FormState>();
  String? jenisKelamin;
  TextEditingController inputName = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: inputName,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    label: Text('Masukan Nama'),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Nama Anda!';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: inputEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                    label: Text('Masukan Email'),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Email Anda!';
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
                    label: Text('Masukan Nomer Telpon'),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Nomer Telpon Anda!';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Jenis Kelamin: ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    Radio(
                      value: 'Laki-laki',
                      groupValue: jenisKelamin,
                      onChanged: (value) {
                        if (value != null) {
                          setState(
                            () {
                              jenisKelamin = value;
                            },
                          );
                        }
                      },
                    ),
                    const Text(
                      'Laki-laki',
                      style: TextStyle(fontSize: 15),
                    ),
                    Radio(
                      value: 'Perempuan',
                      groupValue: jenisKelamin,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            jenisKelamin = value;
                          });
                        }
                      },
                    ),
                    const Text(
                      'Perempuan',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Data Tersimpan'),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
