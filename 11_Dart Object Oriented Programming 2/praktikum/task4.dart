class Manusia {
  int nik; 
  String? nama;
  String? alamat;

  Manusia(this.nik, this.nama, this.alamat);

  void belajar() {
    print('Silakan Belajar');
  }
}

class Mahasiswa extends Manusia {
  var nim, prodi;

  Mahasiswa(this.nim, this.prodi) : super(1234567, 'Aryo', 'Jaksel');

  @override
  void belajar() {
    print('Silakan Belajar');
  }

  void ipk() {
    print('IPK dengan ${nik} ${nama} ${alamat} ${nim} ${prodi} bertotal 3,..');
  }

  void jadwalKuliah() {
    print('Jadwal kuliah kosong dengan pada minggu ini');
  }
}

class Dosen extends Manusia {
  int nidn;
  String jabatan, pangkat;

  Dosen(this.nidn, this.jabatan, this.pangkat) : super(321321, 'Sinta', 'Jaksel');

  @override
  void belajar() {
    print('Silakan Belajar');
  }

  void jadwalMengajar() {
    print('Jadwal mengajar hari ini berada di ruangan 1A');
  }
}

void main(List<String> args) {
  var mahasiswa = Mahasiswa('197064516089','informatika');
  var dosen = Dosen(1029,'Dosen','Kaprodi');

  mahasiswa.ipk();
  mahasiswa.jadwalKuliah();

  dosen.jadwalMengajar();
}