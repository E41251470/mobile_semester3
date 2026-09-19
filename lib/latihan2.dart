void main() {
  List<int> nilai = [80, 90, 65, 70, 95];

  // 1. Menampilkan nilai yang lulus (>= 75)
  List<int> nilaiLulus = nilai.where((n) => n >= 75).toList();

  print('Nilai yang lulus: $nilaiLulus');

  // 2. Mengubah nilai menjadi predikat huruf A/B/C menggunakan switch expression
  List<String> predikat = nilai
      .where((n) => n >= 75)
      .map((n) {
    return switch (n) {
      >= 85 => 'A',
      >= 75 => 'B',
      _ => 'C',
    };
  })
      .toList();

  print('Predikat nilai yang lulus: $predikat');
}