import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_24_provider/pages/home_page.dart';

class RegisterProvider extends ChangeNotifier {
  late SharedPreferences logindata;
  bool _newUser =  false;
  String _username = '';
  String _email = '';
  bool _toogle = true;

  bool get newUser => _newUser;
  String get username => _username;
  String get email => _email;
  bool get toogle => _toogle;

  void checkLogin(BuildContext context) async {
    logindata = await SharedPreferences.getInstance();
    _newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          (route) => false);
    }
    notifyListeners();
  }

  Future<void> addBool(bool bool) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setBool('register', bool);
    notifyListeners();
  }

  Future<void> initial() async {
    logindata = await SharedPreferences.getInstance();
    _username = logindata.getString('username').toString();
    _email = logindata.getString('email').toString();
    notifyListeners();
  }

  Future<void> addName(String username) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString('username', username);
    notifyListeners();
  }

  Future<void> addEmail(String email) async {
    logindata = await SharedPreferences.getInstance();
    logindata.setString('email', email);
    notifyListeners();
  }

  Future<void> deleteName(String username) async {
    logindata = await SharedPreferences.getInstance();
    logindata.remove('username');
    notifyListeners();
  }

  Future<void> deleteEmail(String email) async {
    logindata = await SharedPreferences.getInstance();
    logindata.remove('email');
    notifyListeners();
  }

  toogleTheme() {
    _toogle = !_toogle;
    notifyListeners();
  }
}
