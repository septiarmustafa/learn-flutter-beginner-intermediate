import 'hewan.dart';
import './mixin/renang.dart';
import 'mixin/lari.dart';

class anjing extends hewan with Renang, Lari {
  int jumlahKaki;
  int? kecepatanLari;

  anjing({required this.jumlahKaki, required int berat})
      : super(nama: "Anjing", kategori: "Mamalia", berat: berat);
}
