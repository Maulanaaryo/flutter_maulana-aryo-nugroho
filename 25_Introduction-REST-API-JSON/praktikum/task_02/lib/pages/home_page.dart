import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/user_service.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: jobController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Job',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final response = await UserService().fetchUser();
                    resultDio = response.toString();

                    List<dynamic> data = response['data'];
                    user = data
                        .map(
                          (e) => UserDio.fromJson(e),
                        )
                        .toList();
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
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Result',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              resultDio.toString(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Result Data (Future Builder)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            FutureBuilder<List<UserDio>>(
              future: UserService().fetchData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 500,
                      width: 500,
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage(
                                        snapshot.data![index].avatar),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'ID : ${snapshot.data![index].id}'),
                                        Text(
                                            'Email : ${snapshot.data![index].email}'),
                                        Text(
                                            'Name : ${snapshot.data![index].firstName} ${snapshot.data![index].lastName}'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                  return const Text('No data');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
