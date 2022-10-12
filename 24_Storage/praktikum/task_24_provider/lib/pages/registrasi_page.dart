import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_24_provider/pages/home_page.dart';
import 'package:task_24_provider/provider/register_provider.dart';

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
    final loginProvider = Provider.of<RegisterProvider>(context, listen: false);
    loginProvider.checkLogin(context);
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
              Consumer<RegisterProvider>(
                builder: (context, value, child) {
                  return TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: value.toogle,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      icon: const Icon(Icons.phone),
                      label: const Text('Password'),
                      suffixIcon: IconButton(
                        onPressed: () {
                          value.toogleTheme();
                        },
                        icon: Icon(value.toogle
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
                      loginProvider.addBool(false);
                      loginProvider.addName(username);
                      loginProvider.addEmail(email);
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
