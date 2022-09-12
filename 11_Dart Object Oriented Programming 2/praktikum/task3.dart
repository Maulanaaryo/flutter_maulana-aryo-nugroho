class Hewan {
  String? nama;
  String? jenis;

  Hewan(this.nama, this.jenis);

  void suara() {
    print('Tidak ada suara');
  }
}

class Kucing extends Hewan {
  Kucing() : super('pussy', 'anggora');

  @override
  void suara() {
    print('Kucing ini bernama ${nama} dan dia berjenis ${jenis} suaranya meoww-meoww');
  }

    void lari() {
    print('Kucing ini bernama ${nama} dan dia berjenis ${jenis} sedang berlari-lari');
  }
}

class Unggas extends Hewan {
  String? keluarga;

  Unggas(this.keluarga) : super('Joni', 'Ayam Jago');

  @override
  void suara() {
    print('Unggas dengan nama ${nama} keluarga dari ${keluarga} dan berjenis ${jenis} Suaranya kukuruyuk');
  }
}

class Burung extends Hewan implements Unggas {
  @override
  String? keluarga;

  Burung() : super('Arthur', 'Elang');

  void terbang() {
    print('Burung ini bernama ${nama} terbang dengan sangat indah');
  }
}


void main(List<String> args) {
  var kucingHitam = Kucing();
  kucingHitam.suara();
  kucingHitam.lari();

  var ayam = Unggas('Ayam');
  ayam.suara();

  var elang = Burung();
  elang.terbang();
}