import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/home_view_model.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  void initState() {
    Provider.of<HomeViewModel>(context, listen: false).getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: ListView.builder(
        itemCount: viewModel.user.length,
        itemBuilder: (context, index) {
          final user = viewModel.user[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(user.avatar),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID : ${user.id}'),
                          Text('Email : ${user.email}'),
                          Text('Name : ${user.firstName} ${user.lastName}'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

