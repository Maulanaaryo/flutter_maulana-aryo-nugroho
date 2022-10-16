import 'package:flutter/material.dart';

import '../services/user_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  String resultDio = "";

  @override
  void dispose() {
    nameController.dispose();
    jobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: jobController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Job',
                    prefixIcon: Icon(Icons.work)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().fetchUser();
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('GET'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().createUser(
                        name: nameController.text,
                        job: jobController.text,
                      );
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('POST'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().updateUser(
                        name: nameController.text,
                        job: jobController.text,
                      );
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('PUT'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().deleteUser();
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('DELETE'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Result',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(resultDio.toString())
          ],
        ),
      ),
    );
  }
}
