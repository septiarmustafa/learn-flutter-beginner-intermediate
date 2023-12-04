import 'package:get/get.dart';

class HomepageController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
    // ever(dataPantau, (callback) => print("Perubahan"));
    // once(dataPantau, (callback) => print("Perubahan")); //1x pantau
    // debounce(dataPantau, (callback) => print("pantau 2 detik"),
    //     time: Duration(seconds: 2)); //
    interval(dataPantau, (callback) => print("dieksekusi 2 detik"),
        time: Duration(seconds: 2));
    super.onInit();
  }
}
