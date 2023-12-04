import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RoutePage2 extends StatelessWidget {
  const RoutePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/page_tiga");
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
