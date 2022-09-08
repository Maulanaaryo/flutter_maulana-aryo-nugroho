class Mobil {
  var kapasitas = 1000;
  var totalMuatan = 200;
  List<String> muatan = [];

  void tambahMuatan(int berat, String nama, makanan) {
    if (kapasitas - berat >= 0) {
      kapasitas -= berat;
      totalMuatan += berat;
      muatan.add('Hewan $nama, Makanan $makanan, Berat ${berat.toString()} kg');
      print(
          '=========================================================================');
      print('Hewan berhasil di masukan ke dalam muatan mobil');
      print('Isi muatan pada mobil : $muatan');
      print(
          '=========================================================================');

      print('Jadi total muatan pada mobil adalah $totalMuatan kg');
    } else {
      print('Muatan pada mobil tidak mencukupi');
    }
  }
}
