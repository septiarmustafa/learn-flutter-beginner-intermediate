import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/page/routing_page1.dart';
import 'package:get/get.dart';

class Routing1 extends StatelessWidget {
  final LoginController LoginC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(RoutePage1());
            },
            child: Text("Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/page_dua");
            },
            child: Text("Page 2"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.offAllNamed("/login");
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
