import 'package:flutter/material.dart';

import '../provider/contacts_provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key, required this.contact});
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final contactItem = contact.contacts;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            final item = contactItem[index];
            return Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person_pin,
                      size: 40,
                      color: Colors.grey[600],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          item.phone,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        contact.deleteContact(
                          index,
                        );
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.grey[600],
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: contactItem.length),
    );
  }
}
