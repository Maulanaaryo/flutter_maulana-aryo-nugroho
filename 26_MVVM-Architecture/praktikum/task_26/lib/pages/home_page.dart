import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_26/models/home_view_model.dart';
import 'package:task_26/widgets/user_widget.dart';
import '../models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String resultDio = '';
  List<UserDio> user = [];

  final nameController = TextEditingController();
  final jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UserWidget(),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            controller: jobController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Job',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () async {
                  Provider.of<HomeViewModel>(context, listen: false)
                      .getAllUsers();
                },
                child: const Text('GET'),
              ),
              ElevatedButton(
                onPressed: () async {
                  Provider.of<HomeViewModel>(context, listen: false)
                      .createUser(nameController.text, jobController.text);
                },
                child: const Text('POST'),
              ),
              ElevatedButton(
                onPressed: () async {
                  Provider.of<HomeViewModel>(context, listen: false)
                      .updateUser(nameController.text, jobController.text);
                },
                child: const Text('PUT'),
              ),
              ElevatedButton(
                onPressed: () async {
                  Provider.of<HomeViewModel>(context, listen: false)
                      .deleteUser();
                },
                child: const Text('DELETE'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Result',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            viewModel.result.toString(),
          ),
        ]),
      ),
    );
  }
}
