// import 'dart:io';

// void main() {
//   var grade;

//   stdout.write('Masukan Nilai : ');
//   grade = stdin.readLineSync();
//   int hasil = int.parse(grade);

//   if(hasil > 70) grade = 'A';
//   else if(hasil > 40) grade = 'B';
//   else if(hasil > 0) grade = 'C';
//   else grade = '0';

//   print('Grade : $grade');
// }

void hasil() {
  int nilai = 70;

  if(nilai > 70) {
    print('return A');
  } else if(nilai > 40) {
    print('return B');
  } else if(nilai > 0) {
    print('return C');
  } else {
    print('return kosong');
  }
}

void main(List<String> args) {
  hasil();
}