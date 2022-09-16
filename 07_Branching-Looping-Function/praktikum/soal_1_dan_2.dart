void hasil() {
  int nilai = 70;

  if (nilai > 70) {
    print('A');
  } else if (nilai > 40) {
    print('B');
  } else if (nilai > 0) {
    print('C');
  } else {
    print('kosong');
  }
}

nilaiFaktorial(int jumlah) {
  int faktorial = 1;

  for (int i = 1; i <= jumlah; i++) {
    faktorial *= i;
  }
  print('Nilai Faktorial dari $jumlah adalah $faktorial');
}

void main(List<String> args) {
  hasil();
  nilaiFaktorial(10);
  nilaiFaktorial(20);
  nilaiFaktorial(30);
}
