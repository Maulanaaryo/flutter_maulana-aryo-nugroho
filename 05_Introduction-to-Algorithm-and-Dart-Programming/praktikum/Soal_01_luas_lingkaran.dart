import 'dart:io';

void main() {
  const phi = 3.14;
  var jari;
  stdout.write('Masukan panjang jari-jari lingkaran:');
  jari = stdin.readLineSync();
  double hasilJari = double.parse(jari);
  double luas = phi * hasilJari * hasilJari;
  print('Luas lingkaran adalah ${luas}');
}