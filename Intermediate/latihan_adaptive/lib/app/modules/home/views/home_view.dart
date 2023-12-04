import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return context.isPortrait ? WidgetPotrait() : WidgetLandscape();

    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return WidgetPotrait();
        } else {
          return WidgetLandscape();
        }
      },
    );
  }
}

class WidgetPotrait extends StatelessWidget {
  const WidgetPotrait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          // child: (MediaQuery.of(context).orientation == Orientation.portrait)
          child: Container(
        width: 300,
        height: 300,
        color: Colors.red,
      )),
    );
  }
}

class WidgetLandscape extends StatelessWidget {
  const WidgetLandscape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          // child: (MediaQuery.of(context).orientation == Orientation.portrait)
          child: Container(
        width: 300,
        height: 150,
        color: Colors.amber,
      )),
    );
  }
}
