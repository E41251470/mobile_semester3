// Abstract class
abstract class Kendaraan {
  void bunyiKlakson();
}

// Class Motor meng-extends Kendaraan
class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print('Motor: Tiiin tiiin!');
  }
}

// Mixin untuk kendaraan yang bisa ngebut
mixin BisaNgebut {
  void ngebut() {
    print('Kendaraan sedang ngebut!');
  }
}

// Class Mobil meng-extends Kendaraan dan menggunakan mixin BisaNgebut
class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print('Mobil: Telolet telolet!');
  }
}

void main() {
  // Membuat objek Motor
  Motor motor = Motor();
  motor.bunyiKlakson();

  print('');

  // Membuat objek Mobil
  Mobil mobil = Mobil();
  mobil.bunyiKlakson();
  mobil.ngebut();
}