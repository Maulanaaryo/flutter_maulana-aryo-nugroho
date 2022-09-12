class BangunRuang {
  var panjang, lebar, tinggi;

  BangunRuang(this.lebar, this.panjang, this.tinggi);

  volume() {}
}

class Balok extends BangunRuang {
  Balok() : super(10.0, 5.0, 15.0);

  @override
  volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  double sisi = 5.0;
  Kubus() : super(0.0, 0.0, 0.0);

  @override
  volume() {
    return sisi * sisi * sisi;
  }
}

void main(List<String> args) {
  var bangun1 = Kubus();
  var bangun2 = Balok();

  print(bangun1.volume());
  print(bangun2.volume());
}
