import 'hewan.dart';
import 'mixin/terbang.dart';

class burung extends hewan with Terbang {
  int jumlahKaki;

  burung({required this.jumlahKaki, required int berat})
      : super(nama: "Kenari", kategori: "Hewan Udara", berat: berat);

  // burung(
  //     {required berat,
  //     required this.nama,
  //     required this.kategori,
  //     this.kecepatanRenang}) {
  //   _berat = berat;
  // }

  // get berat => _berat;

  // set makan(int beratMakan) {
  //   _berat = _berat + beratMakan;
  // }
}
