import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RoutePage3 extends StatelessWidget {
  const RoutePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 3"),
            ElevatedButton(
              onPressed: () {
                // Get.to(RoutePage4());
                Get.toNamed("/page_empat");
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
