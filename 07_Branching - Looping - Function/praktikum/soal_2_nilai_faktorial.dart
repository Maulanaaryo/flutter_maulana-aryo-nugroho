import 'dart:io';

void main() {
  int faktorial = 1;

  print('Masukan bilangan bulat : ');
  int n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    print('Angka bukan bilangan bulat');
  }
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  print('Hasil faktorial dari ' +
      n.toString() +
      ' adalah ' +
      faktorial.toString());
}
