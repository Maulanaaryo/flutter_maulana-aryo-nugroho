import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_22/model/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactInitial([])) {
    on<AddContact>((event, emit) {
      var existingContact = [...state.contacts];
      existingContact.add(event.contactModel);
      emit(ContactInitial(existingContact));
    });
    on<DeleteContact>((event, emit) {
      var existingContact = [...state.contacts];
      existingContact.remove(event.contactModel);
      emit(ContactInitial(existingContact));
    });
  }
}
