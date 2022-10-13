// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

   @override
  List<Object> get props => [];
}

class CheckUser extends RegisterEvent {
  BuildContext? context;
  CheckUser({
    this.context,
  });
}

class Initial extends RegisterEvent {}

class AddBool extends RegisterEvent {
  bool newUser;
  AddBool({
    required this.newUser,
  });
}

class AddName extends RegisterEvent {
  String username;
  AddName({
    required this.username,
  });
}

class AddEmail extends RegisterEvent {
  String email;
  AddEmail({
    required this.email,
  });
}

class RemoveName extends RegisterEvent {}

class RemoveEmail extends RegisterEvent {}

class ChangeUser extends RegisterEvent {}
