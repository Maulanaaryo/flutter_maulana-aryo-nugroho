import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_weekly/weekly_1/project/drawer_screen.dart';
import 'package:tugas_weekly/weekly_3/project/contact.dart' as contact_store;
import 'package:tugas_weekly/weekly_3/project/item_contact.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController inputName = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputHelp = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';

  @override
  void dispose() {
    inputName.dispose();
    inputEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('AskMin'),
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
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                child: Image.asset('assets/image_01.jpg'),
              ),
            ],
          ),
        ],
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.network(
              'https://unsplash.com/photos/W3DJSagu-a0/download?ixid=MnwxMjA3fDB8MXxhbGx8NHx8fHx8fDJ8fDE2NjM5MzgwMTA&force=true&w=1920',
              fit: BoxFit.cover,
              height: 400,
              width: 400,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.android),
                  title: Center(
                    child: Text(
                      'Welcome to AskMin!\n Feeling mixed up? Dont worry. AskMin is here to help convey your request',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.android),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 400, left: 10),
              child: const Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 430),
              padding: const EdgeInsets.all(8),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text:
                          'Need to get in touch with us? Either fill out the form with your inquiry or find the',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'departemen email',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const TextSpan(
                        text: "you'd like to contact bellow",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 500),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: inputName,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        labelText: 'Masukan Nama',
                        labelStyle:
                            TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                      onChanged: (String value) {
                        name = value;
                      },
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
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        labelText: 'Masukan Email',
                        labelStyle:
                            TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                      onChanged: (String value) {
                        email = value;
                      },
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
                      controller: inputHelp,
                      keyboardType: TextInputType.text,
                      scrollPadding: const EdgeInsets.only(left: 20),
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        labelText: 'What can we help you with?',
                        labelStyle:
                            TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue),
                      onPressed: () {
                        if (!formKey.currentState!.validate()) return;
                        formKey.currentState!.save();
                        contactProvider.addContact(GetContact(name: inputName.text, email: inputEmail.text));
                        // if (formKey.currentState!.validate()) {
                          // showDialog(
                          //   context: context,
                          //   builder: (context) {
                          //     return AlertDialog(
                          //       content: SizedBox(
                          //         width: 400,
                          //         height: 400,
                          //         child: SingleChildScrollView(
                          //           scrollDirection: Axis.vertical,
                          //           child: Column(
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.start,
                          //             children: [
                          //               const SizedBox(
                          //                 height: 8,
                          //               ),
                          //               Text(
                          //                 'Nama : ${inputName.text}\n',
                          //                 style: const TextStyle(fontSize: 20),
                          //               ),
                          //               const SizedBox(
                          //                 height: 8,
                          //               ),
                          //               Text(
                          //                 'Email : ${inputEmail.text}\n',
                          //                 style: const TextStyle(fontSize: 20),
                          //               ),
                          //               const SizedBox(
                          //                 height: 8,
                          //               ),
                          //               Text(
                          //                 'What can we help you with?\n ${inputHelp.text}',
                          //                 style: const TextStyle(fontSize: 20),
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     );
                          //   },
                          // );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Berhasil Memasukan Data',
                            ),
                          ),
                        );
                        // }
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
