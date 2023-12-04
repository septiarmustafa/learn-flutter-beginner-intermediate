import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeViewApp extends GetView<HomeController> {
  const HomeViewApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
          child: (GetPlatform.isAndroid) ? ContainerAndroid() : ContainerIos(),
        ));
  }
}

class ContainerIos extends StatelessWidget {
  const ContainerIos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.blue,
    );
  }
}

class ContainerAndroid extends StatelessWidget {
  const ContainerAndroid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
    );
  }
}
