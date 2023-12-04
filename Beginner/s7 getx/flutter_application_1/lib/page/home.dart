import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final HomeC = Get.put(HomeController());

  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text("${HomeC.dataInt}"),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        return HomeC.decrement();
                      },
                      child: Text("-"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        HomeC.increment();
                      },
                      child: Text("+"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text("${HomeC.dataString}"),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        return HomeC.updateDataString();
                      },
                      child: Text("Update"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        HomeC.resetDataString();
                      },
                      child: Text("Reset"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text("${HomeC.dataDouble}"),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        return HomeC.decrementDouble();
                      },
                      child: Text("-"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        HomeC.incrementDouble();
                      },
                      child: Text("+"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text("${HomeC.dataBool}"),
                ),
                ElevatedButton(
                  onPressed: () {
                    return HomeC.gantiDataBool();
                  },
                  child: Text("Ganti Bool"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text("${HomeC.dataList}"),
                ),
                ElevatedButton(
                  onPressed: () {
                    return HomeC.tambahDataList();
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          ],
        ));
  }
}
