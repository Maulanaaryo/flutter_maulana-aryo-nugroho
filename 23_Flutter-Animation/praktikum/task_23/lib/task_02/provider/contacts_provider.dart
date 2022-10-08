import 'package:flutter/material.dart';
import '../model/contact.dart';

class Contact with ChangeNotifier {
  final List<ContactModel> _contacts = [];
  List<ContactModel> get contacts => _contacts;

  void tambahContact(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
