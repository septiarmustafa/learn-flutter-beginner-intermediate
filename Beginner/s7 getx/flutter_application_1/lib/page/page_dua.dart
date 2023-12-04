import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/page_satu_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

// ignore: must_be_immutable
class PageDua extends StatelessWidget {
  PageSatuController PageSatuC = Get.find();

  PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${PageSatuC.data2['name']} - ${PageSatuC.data2['age']} tahun",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text("Next"),
            // ),
          ],
        ),
      ),
    );
  }
}
