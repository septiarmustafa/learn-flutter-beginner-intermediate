import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RoutePage5 extends StatelessWidget {
  const RoutePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 5"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 5"),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/home");
              },
              child: Text("Back to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/page_dua");
              },
              child: Text("Back to page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
