import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/homepage.dart';
import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter_application_1/page/routing_1.dart';
import 'package:flutter_application_1/page/routing_page1.dart';
import 'package:flutter_application_1/page/routing_page2.dart';
import 'package:flutter_application_1/page/routing_page3.dart';
import 'package:flutter_application_1/page/routing_page4.dart';
import 'package:flutter_application_1/page/routing_page5.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Homepage(),
      routes: {
        "home": (p0) => Routing1(),
        "login": (p0) => LoginPage(),
        "page_satu": (p0) => RoutePage1(),
        "page_dua": (p0) => RoutePage2(),
        "page_tiga": (p0) => RoutePage3(),
        "page_empat": (p0) => RoutePage4(),
        "page_lima": (p0) => RoutePage5()
      },
      getPages: [
        GetPage(name: "/home", page: () => Routing1()),
        GetPage(name: "/login", page: () => LoginPage()),
        GetPage(name: "/page_satu", page: () => RoutePage1()),
        GetPage(name: "/page_dua", page: () => RoutePage2()),
        GetPage(name: "/page_tiga", page: () => RoutePage3()),
        GetPage(name: "/page_empat", page: () => RoutePage4()),
        GetPage(name: "/page_lima", page: () => RoutePage5()),
      ],
    );
  }
}

// class SnackBarKuldii extends StatelessWidget {
//   const SnackBarKuldii({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Snack Bar"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Get.snackbar("Halo", "Ini adalah contoh snackbar",
//                     snackPosition: SnackPosition.BOTTOM);
//               },
//               child: const Text("Open Snackbar"),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Get.defaultDialog(
//                     title: "Judul",
//                     middleText: "Ini content dialog",
//                     actions: [
//                       ElevatedButton(
//                         onPressed: () {
//                           Get.back();
//                         },
//                         child: Text("Cancel"),
//                       )
//                     ]);
//               },
//               child: const Text("Open Dialog"),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Get.bottomSheet(Container(
//                   color: Colors.grey,
//                   child: const Column(
//                     children: [
//                       ListTile(
//                         title: Text("data"),
//                       ),
//                       ListTile(
//                         title: Text("data 0"),
//                       ),
//                       ListTile(
//                         title: Text("data 1"),
//                       ),
//                     ],
//                   ),
//                 ));
//               },
//               child: const Text("Open Buttomsheet"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
