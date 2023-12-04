import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/page_satu_controller.dart';
import 'package:flutter_application_1/page/page_dua.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  // final PageSatuC = Get.put(PageSatuController());
  final PageSatuC = Get.lazyPut(() => PageSatuController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "${PageSatuC.data["name"]} - ${PageSatuC.data["age"]}",
            //   style: TextStyle(fontSize: 30),
            // ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageDua(),
                    ));
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
