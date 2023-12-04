import 'hewan.dart';
import 'mixin/lari.dart';

class kucing extends hewan with Lari {
  int jumlahKaki;

  kucing({required this.jumlahKaki, required int berat})
      : super(nama: "Kucing", kategori: "Mamalia", berat: berat);

  // kucing({
  //   required berat,
  //   required this.nama,
  //   required this.kategori,
  //   this.jumlahKaki,
  //   this.kecepatanLari,
  // }) {
  //   _berat = berat;
  // }

  // get berat => _berat;

  // set makan(int beratMakan) {
  //   _berat = _berat + beratMakan;
  // }
}
