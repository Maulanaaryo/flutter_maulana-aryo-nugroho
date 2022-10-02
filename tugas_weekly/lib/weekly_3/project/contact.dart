import 'package:flutter/material.dart';
import 'package:tugas_weekly/weekly_3/project/item_contact.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contact = [];
  List<GetContact> get contacts => _contact;

  void addContact(GetContact contact) {
    _contact.add(contact);
    notifyListeners();
  } 
}