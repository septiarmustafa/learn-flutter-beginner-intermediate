import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePage1 extends StatelessWidget {
  const RoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 1"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
