import 'hewan.dart';
import 'mixin/renang.dart';

class ikan extends hewan with Renang {
  ikan({required int berat})
      : super(nama: "Kerapu", kategori: "Hewan Laut", berat: berat);
}
