import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_view_dua/bindings/home_view_dua_binding.dart';
import '../modules/home_view_dua/views/home_view_dua_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/sliver/bindings/sliver_binding.dart';
import '../modules/sliver/views/sliver_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SLIVER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.HOME_VIEW_DUA,
      page: () => const HomeViewDuaView(),
      binding: HomeViewDuaBinding(),
    ),
    GetPage(
      name: _Paths.SLIVER,
      page: () => const SliverView(),
      binding: SliverBinding(),
    ),
  ];
}
