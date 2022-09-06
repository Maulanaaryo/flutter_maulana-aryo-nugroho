void main(List<String> args) {
  var nilai;
  var jumlah;
  var rata;
  var matriks = [
    [1, 4, 5, 2],
    [3, 2, 5, 6],
    [9, 8, 3, 1],
    [7, 6, 4, 2],
    [9, 6, 5, 3],
  ];

  for (nilai in matriks) {
    jumlah = nilai[0] + nilai[1] + nilai[2] + nilai[3];
    print('Jumlah nilai dari $nilai adalah $jumlah');

    rata = jumlah / nilai.length;
    print('Rata-rata nilai dari $nilai adalah $rata');

    int min = nilai[0];
    int max = nilai[0];

    for (int i = 0; i < nilai.length; i++) {
      if (nilai[i] < min) {
        min = nilai[i];
      }
      if (nilai[i] > max) {
        max = nilai[i];
      }
    }
    print('Max nilai dari $nilai adalah $max');
    print('Min nilai dari $nilai adalah $min');
    print('=================================');
  }
}