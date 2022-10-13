import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_24_bloc/bloc/register_bloc.dart';
import 'package:task_24_bloc/pages/home_page.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({super.key});

  @override
  State<RegistrasiPage> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = BlocProvider.of<RegisterBloc>(context);
    loginProvider.add(CheckUser(context: context));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
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
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                    label: Text('Email')),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Email!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _phoneController,
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
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    if (state is RegisterLoaded) {
                      return TextFormField(
                        controller: _passwordController,
                        obscureText: state.toogle,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: const Icon(Icons.password),
                        label: const Text('Password'),
                        suffixIcon: IconButton(
                          onPressed: () {
                            BlocProvider.of<RegisterBloc>(context)
                                .add(ChangeUser());
                          },
                          icon: Icon(state.toogle
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      validator: (password) {
                        if (password != null && password.length < 5) {
                          return 'Enter min. 5 characters';
                        }
                        return null;
                      },
                    );
                  }
                  return const Text('Something went wrong');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    final isValid = formKey.currentState!.validate();
                    String username = _nameController.text;
                    String email = _emailController.text;

                    if (isValid) {
                      loginProvider.add(AddBool(newUser: false));
                      loginProvider.add(AddName(username: username));
                      loginProvider.add(AddEmail(email: email));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (route) => false);
                    }
                  },
                  child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
