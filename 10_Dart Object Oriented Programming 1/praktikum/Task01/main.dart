import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  var hewan1 = Hewan();
  hewan1.berat = 500;
  hewan1.nama = 'Sapi';

  var hewan2 = Hewan();
  hewan2.berat = 100;
  hewan2.nama = 'Kambing';

  var mobil = Mobil();
  mobil.tambahMuatan(hewan1.berat, hewan2.nama);
  mobil.tambahMuatan(hewan2.berat, hewan2.nama);
}