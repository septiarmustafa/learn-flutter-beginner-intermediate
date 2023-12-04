class Pakaian {
//Atribut
  String? jenis;
  String? warna;
  String? _ukuran;

// Constructor
  // Pakaian(String jenisNya, String warnaNya) {
  //   jenis = jenisNya;
  //   warna = warnaNya;

// Positional Constructor (Named argument)
  // Pakaian({String? jenisNya, String? warnaNya}) {
  //   jenis = jenisNya;
  //   warna = warnaNya;
  // }

// Direct constructor - direct named constructor
  Pakaian({this.jenis, this.warna, ukuran}) {
    _ukuran = ukuran;
  }

  // Method
  // fungsi ganti biasssa
  void gantiUkuran(String? newUkuran) {
    _ukuran = newUkuran;
  }

  // fungsi get biasa
  // String? ukuran() {
  //   return ukuran();
  // }

  //getter
  String? get ukuran {
    return _ukuran;
  }

  //setter
  set newUkuran(String? newUkuran) {
    _ukuran = newUkuran;
  }
}
