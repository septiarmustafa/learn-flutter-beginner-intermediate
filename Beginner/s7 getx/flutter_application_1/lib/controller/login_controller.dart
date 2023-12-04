import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == "admin@gmail.com" && passwordC.text == "admin") {
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      if (rememberMe.isTrue) {
        // simpan data di local memory hp

        box.write(
          "dataRememberMe",
          {
            "email": emailC.text,
            "password": passwordC.text,
          },
        );
      }
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
          title: "Login Gagal", middleText: "Email atau Password Salah");
    }
  }

  void logout() async {
    Get.offAllNamed("/login");
  }
}
