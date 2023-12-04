enum motor { nmax, jupiter, pcx, mio }

void main() {
  //Enum -> bool -> data yang ditampung ada 2 -> kondisi true/false
  // bool isMale = true;

  // if (isMale == true) {
  //   print("Dia Laki-laki");
  // } else {
  //   print("Dia Perempuan");
  // }

  // Enum -> int -> bisa banyak data
  // 0 : NMAX
  // 1 : Jupiter
  // 2 : PCX
  // 3 : Mio

  var motorKu = motor.nmax;
  if (motorKu == motor.nmax) {
    print("NMAX");
  } else if (motorKu == motor.jupiter) {
    print("Jupiter");
  } else if (motorKu == motor.pcx) {
    print("PCX");
  } else if (motorKu == motor.mio) {
    print("MIO");
  } else {
    print("Tidak diketahui");
  }
}
