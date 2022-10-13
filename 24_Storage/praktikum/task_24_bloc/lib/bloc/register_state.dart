part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterLoaded extends RegisterState {
  String username;
  String email;
  bool toogle;
  RegisterLoaded({
    this.username = '',
    this.email = '',
    this.toogle = true,
  });

  @override 
  List<Object> get props => [username, email, toogle];
}

class RegisterError extends RegisterState {}
