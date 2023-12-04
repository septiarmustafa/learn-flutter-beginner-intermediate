import 'package:get/get.dart';
import 'package:latihan_adaptive/app/modules/home/views/android_ios.dart';

import '../modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeViewApp(),
      binding: HomeBinding(),
    ),
  ];
}
