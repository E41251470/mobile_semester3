class Produk {
  String nama;
  double _harga;

  // Constructor biasa
  Produk(this.nama, this._harga);

  // Named constructor
  Produk.gratis(this.nama) : _harga = 0;

  // Getter harga
  double get harga => _harga;

  // Setter harga dengan validasi
  set harga(double nilai) {
    if (nilai < 0) {
      print('Harga tidak boleh negatif!');
    } else {
      _harga = nilai;
    }
  }
}

void main() {
  // Membuat produk dengan harga biasa
  Produk produk1 = Produk('Laptop', 5000000);

  print('Produk: ${produk1.nama}');
  print('Harga: ${produk1.harga}');

  // Mengubah harga menggunakan setter
  produk1.harga = 4500000;
  print('Harga setelah diubah: ${produk1.harga}');

  // Mencoba memasukkan harga negatif
  produk1.harga = -100000;
  print('Harga setelah memasukkan nilai negatif: ${produk1.harga}');

  print('');

  // Membuat produk menggunakan named constructor gratis
  Produk produk2 = Produk.gratis('Pulpen');

  print('Produk: ${produk2.nama}');
  print('Harga: ${produk2.harga}');
}