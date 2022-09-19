import 'hewan.dart';

class Mobil {
  var kapasitas = 1000;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan hewanBaru) {
    if (kapasitas - hewanBaru.berat >= 0) {
      kapasitas -= hewanBaru.berat;
      muatan.add(hewanBaru);
      print('Tambah muatan pada mobil : ${hewanBaru.nama}, ${hewanBaru.berat}kg');
    } else {
      print('Muatan pada mobil tidak mencukupi');
    }
  }

  void totalMuatan() {
    var totalBerat = 0;
    for (Hewan hewan in muatan) {
      totalBerat += hewan.berat;
    }
    print('Total Berat Hewan di Dalam Mobil : ${totalBerat}kg.');
  }
}
