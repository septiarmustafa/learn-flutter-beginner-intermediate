abstract class hewan {
  String kategori;
  String nama;
  late int _berat;

  hewan({
    required berat,
    required this.nama,
    required this.kategori,
  }) {
    _berat = berat;
  }

  get berat => _berat;

  set makan(int beratMakan) {
    _berat = _berat + beratMakan;
  }
}
