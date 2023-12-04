// _________________________________________________________________________
//

// _________________________________________________________________________
// Collection

// void main () {
//   //List
//   List matematika = [8,9,7,6,5];
//   List fisika = [5,6,9,10];
//   print (matematika);
//   print (fisika);

//   //Set
//   Set matematikaSet = {8,9,7,6,5};
//   Set fisikaSet = {5,6,9,10};
//   print (matematikaSet.union(fisikaSet));
//   print (matematikaSet.intersection(fisikaSet));

//   //Map
//   Map nilai = {"matematika" : [8,9,7,6,5],
//                "fisika" : [5,6,20,10],};
//   print (nilai["fisika"][2]);

// }

// _________________________________________________________________________
// Conditional Expressions

// void main (){
//   String nama = "Manto";

//   if(nama == "Joni"){
//     print("Nama dia Joni");

//   }else if(nama == "Mama"){
//     print ("Nama dia Mama");

//   } else{
//   print ("Nama dia bukan Joni dan Mama, tapi $nama");

//   }

//   switch (nama){
//     case "Joni":
//       print("Nama dia Joni");
//       break;
//     case "Mama":
//       print("Nama dia Mama");
//       break;
//     case "Rama":
//       print("Nama dia Rama");
//       break;
//     default:
//       print ("Nama dia bukan Joni, Mama, atau Rama, tapi $nama");

//   }

// }

// _________________________________________________________________________
// Looping

// void main() {
// //   for (
// //   int i = 1; i <= 10; i++ ){
// //    print (i);
// //   }

//   List<String> motor = ["Mio", "Beat", "Scoopy"];

//   //for
//   for (String m in motor) {
//     print("Motorku ada $m");
//   }

//   //forEach
//   motor.forEach((mm) => print("Motorku ada $mm"));
//   {}
//   ;
// }

// _________________________________________________________________________
// Exceptions
// void main() {
//   try {
//     int umur = int.parse("90a");
//     print (umur);
//   } on FormatException {
//     print ("Data yang harus diinput adalah angka");
//   } catch (e) {
//     print("Error secara general");
//   }
// }

// _________________________________________________________________________
// Looping for

// void main() {
//   for (int i = 0; i < 5; i++) {
//     print('hello ${i + 1}');
//   }
// }

// _________________________________________________________________________
// future

// void main (){
//   print ("A");
//   CetakB().then((data) => print(data)).catchError((err) => print(err)) ;
//   print ("C");

// }

//   Future<String> CetakB() async {

//     await Future.delayed(Duration(seconds : 2));

//     print ("B");

//     return "Berhasil cetak B";
// //     throw "Tidak berhasil cetak B";

//   }

// Null safety
// void main() {
//   String? nama = getNama();

//   // print(nama?.length ?? "Tidak ada data nama");
//   // menghandle data null
//   if (nama?.length == null) {
//     print("Tidak ada data");
//   } else {
//     // sudah dipastikan ada datanya
//     print("$nama terdiri dari ${nama!.length} karakter");
//   }
// }

// String? getNama() {
//   return null;
// }

//late

// void main() {
//   late String? nama;

//   nama = "Sukma";

//   printNama(nama);
// }

// void printNama(String? parameterNama) {
//   print(parameterNama);
// }

// kesimpulan
// 1. ? = variable diperbolehkan null
// 2. ?? = untuk handle null
// 3. ! = kita sudah memastikan dengan benar bahwa data sudah pasti ada (tidak null)
// 4. late = untuk memastikan bahwa sebelum dieksekusi => wajib diinisialisasi

//Class
// Dasar
// void main() {
//   var pakaian = Pakaian();
//   pakaian.jenis = "Baju";
//   pakaian.warna = "Putih";
//   print("${pakaian.jenis} - Warna ${pakaian.warna}");

//   var pakaian2 = Pakaian();
//   pakaian2.jenis = "Kemeja";
//   pakaian2.warna = "Biru";
//   print("${pakaian2.jenis} - Warna ${pakaian2.warna}");
// }

// class Pakaian {
//   String? jenis;
//   String? warna;
// }

// OOP pake constructor
// import 'model_pakaian.dart';

// void main() {
//   var pakaian = Pakaian(jenis: "Baju", warna: "Putih", ukuran: "M");
//   print(
//       "${pakaian.jenis} - Warna ${pakaian.warna} - Ukuran : ${pakaian.ukuran}");
//   print("Ganti Ukuran");
//   // pakaian.ukuran = "XL"; // tidak diizinkan mengganti private atribute
//   pakaian.newUkuran = "XXL"; // setter
//   pakaian.gantiUkuran("S"); // method biasa
//   print(
//       "${pakaian.jenis} - Warna ${pakaian.warna} - Ukuran : ${pakaian.ukuran}");

//   var pakaian2 = Pakaian(jenis: "Kemeja", warna: "Hitam", ukuran: "S");
//   print(
//       "${pakaian2.jenis} - Warna ${pakaian2.warna} - Ukuran : ${pakaian2.ukuran}");
// }

// void main() {
//   List buah = [
//     {
//       "namaBuah": "Melon",
//       "berat": 40,
//       "namaBuah": "Apel",
//       "berat": 5,
//       "namaBuah": "Semangka",
//       "berat": 50,
//     }
//   ];

//   buah.sort((a, b) => a["berat"].compareTo(b["berat"]));

//   print(buah);
// }

import 'anjing.dart';
import 'kucing.dart';
import 'burung.dart';
import 'ikan.dart';
import 'anjing.dart';

void main() {
  // hewan hewan0 =  hewan(berat: 4, nama: "Hewan ...", kategori: "kategori ...");

  kucing hewan1 = kucing(
    jumlahKaki: 4,
    berat: 10,
  );
  hewan1.setlari = 7;

  print(
      "Nama Hewan : ${hewan1.nama} \nKategori Hewan : ${hewan1.kategori} \nBerat Hewan : ${hewan1.berat} \nJumlah kaki : ${hewan1.jumlahKaki} \nKecepatan Lari : ${hewan1.lari}");
  print("---- Makan 3 KG ----");
  hewan1.makan = 3;
  print("Sekarang berat ${hewan1.nama} menjadi ${hewan1.berat}");

  print("____________________");

  burung hewan2 = burung(
    jumlahKaki: 2,
    berat: 2,
  );
  hewan2.setterbang = 20;

  print(
      "Nama Hewan : ${hewan2.nama} \nKategori Hewan : ${hewan2.kategori} \nBerat Hewan : ${hewan2.berat} \nJumlah kaki : ${hewan2.jumlahKaki} \nKecepatan Lari : ${hewan2.terbang}");
  print("---- Makan 3 KG ----");
  hewan2.makan = 3;
  print("Sekarang berat ${hewan2.nama} menjadi ${hewan2.berat}");

  print("____________________");

  ikan hewan3 = ikan(berat: 1);
  hewan3.setrenang = 1;

  print(
      "Nama Hewan : ${hewan3.nama} \nKategori Hewan : ${hewan3.kategori} \nBerat Hewan : ${hewan3.berat} \nKecepatan Renang : ${hewan3.renang}");
  print("---- Makan 3 KG ----");
  hewan3.makan = 3;
  print("Sekarang berat ${hewan3.nama} menjadi ${hewan3.berat}");

  print("____________________");

  anjing hewan4 = anjing(
    jumlahKaki: 4,
    berat: 1,
  );
  hewan4.setlari = 50;
  hewan4.setrenang = 5;

  print(
      "Nama Hewan : ${hewan4.nama} \nKategori Hewan : ${hewan4.kategori} \nBerat Hewan : ${hewan4.berat} \nKecepatan Renang : ${hewan4.renang} \nKecepatan Lari : ${hewan4.lari}");
  print("---- Makan 3 KG ----");
  hewan4.makan = 3;
  print("Sekarang berat ${hewan4.nama} menjadi ${hewan4.berat}");
  // hewan hewan1 =
  //     hewan(berat: 10, nama: "Kucing", kategori: "Mamalia", jumlahKaki: 4);

  // print("Hewan 1 : ${hewan1.kategori} - ${hewan1.nama}");
  // print("Berat Hewan 1 : ${hewan1.berat} KG");
  // print("${hewan1.jumlahKaki} Kaki");

  // print("--- MAKAN 1 KG ---");
  // hewan1.makan = 1;
  // print("Sekarang ${hewan1.berat} KG");

  // print("\n ========== \n");

  // hewan hewan2 =
  //     hewan(berat: 5, nama: "Ikan", kategori: "Laut", kecepatanRenang: 2);

  // print("Hewan 2 : ${hewan2.kategori} - ${hewan1.nama}");
  // print("Berat Hewan 2 : ${hewan2.berat} KG");
  // print("${hewan2.kecepatanRenang} m/s");

  // print("--- MAKAN ---");
  // hewan2.makan = 1;
  // print("Sekarang ${hewan2.berat} KG");
}
