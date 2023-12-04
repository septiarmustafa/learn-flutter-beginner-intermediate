void main() {
  String namaku = "Tiar";
  String mauBeli = "Americanoo";
  int uangku = 30000;
  int stokTerjual = 2;

  List kopi = [
    {"namaKopi": "Caffe Latte", "harga": 220000, "stok": 20},
    {"namaKopi": "Americano", "harga": 20000, "stok": 22},
    {"namaKopi": "Cappucino", "harga": 21000, "stok": 13},
    {"namaKopi": "Moccachino", "harga": 24000, "stok": 25},
  ];

  print("Halo selamat  datang di KOPIKOPI\n");

  print("Silakan mau beli apa:\n");

  for (var i in kopi) {
    print("Nama Kopi :" +
        i["namaKopi"] +
        "\n" +
        "Harga kopi :" +
        i["harga"].toString() +
        "\n" +
        "Stok kopi :" +
        i["stok"].toString() +
        "\n");
  }

  print("------------ \n");

  print("Halo namaku $namaku");
  print("Aku mau beli $mauBeli \n");

  print("------------ \n");

  for (var i in kopi) {
    if (mauBeli == i["namaKopi"]) {
      if (uangku >= i["harga"]) {
        print("Terima kasih telah membeli");
        if (uangku == i["harga"]) {
          print("Uangmu pas");
        } else {
          print("Kembalian uang kamu: " + (uangku - i["harga"]).toString());
        }
        print("Stok kopi sisa : ${(i["stok"]) - (stokTerjual)}");
//         i["stok"]-=stokTerjual;
//         print ("Sisa Stok saat ini : " + i["stok"].toString());
      } else {
        print("Maaf, Uang kamu kurang");
      }
    } else {
      if (mauBeli != i["namaKopi"]) {
        var s = "Maaf Stok Kosong";
//         int a = 1;
        for (int a = 1; a < 2; a--);
        print(s);
      }
    }
  }
}
