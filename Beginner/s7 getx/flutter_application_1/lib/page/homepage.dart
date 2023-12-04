import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homepage_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homepage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final HomeC = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi perubahan : ${HomeC.dataPantau} x",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => HomeC.change(),
                decoration: const InputDecoration(
                  labelText: "Data",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // Get.snackbar(
                    //   "",
                    //   "",
                    //   messageText: Text("data"),
                    //   titleText: Text("data"),
                    //   snackStyle: Snack,
                    //   icon: Icon(Icons.person, color: Colors.white),
                    //   backgroundColor: Colors.green,
                    //   borderRadius: 20,
                    //   margin: EdgeInsets.all(15),
                    //   colorText: Colors.white,
                    //   duration: Duration(seconds: 4),
                    //   isDismissible: true,
                    //   forwardAnimationCurve: Curves.easeOutBack,
                    // );
                    Get.showSnackbar(
                      GetSnackBar(
                        titleText: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Successfully Save as Draft",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 1,
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        messageText: const Text(""),
                        duration: Duration(seconds: 3),
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.green,
                        borderRadius: 8.0,
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        margin: const EdgeInsets.all(16),
                      ),
                    );
                  },
                  child: const Text("Show Snackbar"))
            ],
          ),
        ),
      ),
    );
  }
}
