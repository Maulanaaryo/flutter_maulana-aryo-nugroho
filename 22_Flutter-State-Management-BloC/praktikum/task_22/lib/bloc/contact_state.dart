part of 'contact_bloc.dart';

abstract class ContactState extends Equatable {
  final List<ContactModel> contacts;
  const ContactState(this.contacts);

  @override
  List<Object> get props => [contacts];
}

class ContactInitial extends ContactState {
  const ContactInitial(super.contacts);
}

class ContactLoading extends ContactState {
  const ContactLoading(super.contacts);
}

class ContactLoaded extends ContactState {
  const ContactLoaded(super.contacts);
}

class ContactFailed extends ContactState {
  const ContactFailed(super.contacts);
}
