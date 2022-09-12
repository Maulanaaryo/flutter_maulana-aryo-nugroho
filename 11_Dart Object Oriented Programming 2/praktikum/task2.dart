class Matematika {
  hasil() {
    return 0;
  }
}

class KelipatanPersekutuanTekecil implements Matematika {
  int x;
  int y;
  KelipatanPersekutuanTekecil(this.x, this.y);

  @override
  hasil() {
    int kpk = 0;
    int i;
    for (i = 1; i <= y; i++) {
      kpk += x;
      if (kpk % y == 0) {
        kpk;
        break;
      }
    }
    return kpk;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;
  FaktorPersekutuanTerbesar(this.x, this.y);
  @override
  hasil() {
    while (x != y) {
      if (x > y) {
        x = x - y;
      } else {
        y = y - x;
      }
    }
    return x;
  }
}

void main() {
  FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar(8, 9);
  KelipatanPersekutuanTekecil kpk = KelipatanPersekutuanTekecil(5, 7);

  print(fpb.hasil());
  print(kpk.hasil());
}