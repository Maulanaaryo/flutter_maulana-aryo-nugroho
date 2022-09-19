import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  var hewan1 = Hewan();
  var hewan2 = Hewan();
  var hewan3 = Hewan();

  hewan1.berat = 500;
  hewan1.nama = 'Sapi';
  hewan2.berat = 100;
  hewan2.nama = 'Kambing';
  hewan3.berat = 100;
  hewan3.nama = 'Kucing';

  var mobil = Mobil();

  print('=============================================');
  print('Kapasitas Mobil : ${mobil.kapasitas}');
  print('=============================================');
  mobil.tambahMuatan(hewan1);
  mobil.tambahMuatan(hewan2);
  mobil.tambahMuatan(hewan3);
  print('=============================================');
  mobil.totalMuatan();
}
