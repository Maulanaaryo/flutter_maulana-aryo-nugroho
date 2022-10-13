import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_24_bloc/pages/register_page.dart';

import '../bloc/register_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late SharedPreferences registerdata;
  String username = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = BlocProvider.of<RegisterBloc>(context);
    userProvider.add(Initial());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home '),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              if (state is RegisterLoaded) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello, ${state.username}',
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      state.email,
                      style: const TextStyle(fontSize: 30),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        userProvider.add(AddBool(newUser: true));
                        userProvider.add(RemoveName());
                        userProvider.add(RemoveEmail());
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrasiPage(),
                          ),
                        );
                      },
                      child: const Text('Sign Out'),
                    )
                  ],
                );
              }
              return const Text('Something when wrong');
            },
          ),
        ),
      ),
    );
  }
}
