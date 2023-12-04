import 'package:get/get.dart';

import '../controllers/home_view_dua_controller.dart';

class HomeViewDuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewDuaController>(
      () => HomeViewDuaController(),
    );
  }
}
