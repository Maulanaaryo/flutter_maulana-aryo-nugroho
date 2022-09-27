class Person {
  String name;
  String email;
  String phone;
  String jenisKelamin;
  String imageAsset;

  Person({
    required this.name,
    required this.email,
    required this.phone,
    required this.jenisKelamin,
    required this.imageAsset,
  });
}

var personList = [
  Person(
    name: 'Monkey D.Luffy',
    email: 'luffy@gmail.com',
    phone: '0192837465',
    jenisKelamin: 'Laki-laki',
    imageAsset: 'assets/01.jpg',
  ),
  Person(
    name: 'Portgas D.Ace',
    email: 'ace@gmail.com',
    phone: '1234098756',
    jenisKelamin: 'Laki-laki',
    imageAsset: 'assets/02.jpg',
  ),
  Person(
    name: 'Roronoa Zoro',
    email: 'zoro@gmail.com',
    phone: '7564819209',
    jenisKelamin: 'Laki-laki',
    imageAsset: 'assets/03.jpg',
  ),
  Person(
    name: 'Usopp',
    email: 'usopp@gmail.com',
    phone: '8241950125',
    jenisKelamin: 'Laki-laki',
    imageAsset: 'assets/04.jpg',
  ),
  Person(
    name: 'Sabo',
    email: 'sabo@gmail.com',
    phone: '1294751245',
    jenisKelamin: 'Laki-laki',
    imageAsset: 'assets/05.jpg',
  ),
];
