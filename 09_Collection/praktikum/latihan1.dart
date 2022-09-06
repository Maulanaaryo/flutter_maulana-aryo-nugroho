import 'dart:io';

void main(List<String> args) {
  num rata2;
  num jumlah = 0;
  List angka = [];

  for (var i = 0; i < 5; i++) {
    stdout.write('Data ke-${i + 1} : ');
    var inputData = stdin.readLineSync();
    if (inputData != null) {
      final listData = int.parse(inputData);
      angka.add(listData);
    }
  }
  for (var i = 0; i < angka.length; i++) {
    jumlah += angka[i];
  }
  rata2 = jumlah / 5;
  print('==================================');
  print('Jadi jumlah Rata-Rata nya adalah :');
  print(rata2);
}

