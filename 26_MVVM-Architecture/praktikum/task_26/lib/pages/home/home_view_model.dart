import 'package:flutter/material.dart';
import 'package:task_26/models/api/user_api.dart';
import 'package:task_26/models/user_model.dart';

class HomeViewModel with ChangeNotifier {
  List<UserDio> _user = [];
  String _result = '';

  List<UserDio> get user => _user;
  String get result => _result;

  getAllUsers() async {
    final response = await UserApi().fetchUser();
    _result = response.toString();
    notifyListeners();
  }

  createUser(String name, String job) async {
    final response = await UserApi().createUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  updateUser(String name, String job) async {
    final response = await UserApi().updateUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  deleteUser() async {
    final response = await UserApi().deleteUser();
    _result = response.toString();
    notifyListeners();
  }

  getUsers() async {
    final response = await UserApi().fetchData();
    _user = response;
    notifyListeners();
  }
}
