part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  final ContactModel contactModel;
  const ContactEvent(this.contactModel);

  @override
  List<Object> get props => [];
}


class AddContact extends ContactEvent {
  const AddContact(super.contact);
}

class DeleteContact extends ContactEvent {
  const DeleteContact(super.contact);
}