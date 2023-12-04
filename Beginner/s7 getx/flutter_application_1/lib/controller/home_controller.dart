import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = "data".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;

  int angkaSelanjutnya = 4;

  void tambahDataList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void increment() => dataInt++;
  void decrement() => dataInt--;
  void updateDataString() {
    dataString.value = "data (updated)";
  }

  void resetDataString() {
    dataString.value = "data";
  }

  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;

  void gantiDataBool() {
    // if (dataBool.isTrue) {
    //   dataBool.value = false;
    // } else {
    //   dataBool.value = true;
    // }
    dataBool.toggle();
  }
}
