class UserDio {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;
  UserDio({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  Map toJson() => {
        id: id,
        email: 'email',
        firstName: 'first_name',
        lastName: 'last_name',
        avatar: 'avatar',
      };

  UserDio.fromJson(Map json)
      : id = json['id'],
        email = json['email'],
        firstName = json['first_name'],
        lastName = json['last_name'],
        avatar = json['avatar'];
}
