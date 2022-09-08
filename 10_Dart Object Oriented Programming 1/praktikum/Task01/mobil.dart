class Mobil {
  var kapasitas = 1000;
  var totalMuatan = 0;
  List<String> muatan = [];

  void tambahMuatan(int berat, String nama) {
    if (kapasitas >= berat ) {
      kapasitas -= berat;
      totalMuatan += berat;
      muatan.add('Hewan $nama, Berat ${berat.toString()} kg');
      print(
          '===========================================================================');

      print('Hewan berhasil di masukan ke dalam muatan mobil');
      print('Isi muatan pada mobil : $muatan');
      print(
          '===========================================================================');
      print('Total muatan pada mobil : $totalMuatan');
      print(
          '===========================================================================');
      print('Sisa kapasitas mobil $kapasitas kg');
      print(
          '===========================================================================');
    } else {
      print('Muatan pada mobil tidak mencukupi');
    }
  }
}
