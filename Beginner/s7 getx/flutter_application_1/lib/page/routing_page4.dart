import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/routing_page5.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RoutePage4 extends StatelessWidget {
  const RoutePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 4"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 4"),
            ElevatedButton(
              onPressed: () {
                Get.to(RoutePage5());
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
