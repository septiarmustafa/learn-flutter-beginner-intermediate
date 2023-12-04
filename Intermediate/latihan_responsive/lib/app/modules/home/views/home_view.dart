import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widhtDevice = Get.width;
  double heightDevice = Get.height;

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;
    // double widhtDevice = MediaQuery.of(context).size.width;
    // double heightDevice = MediaQuery.of(context).size.height;
    // double paddingTop = MediaQuery.of(context).padding.top;
    // double paddingBottom = MediaQuery.of(context).padding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        heightDevice - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 300,
        ),
        child: Container(
          width: 150,
          height: 150,
          color: Colors.amber,
          child: Text(
            "Haloooooooooooooooojkfbe jkbewqjaaaaasddo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),

      // Layout builder
      // body: Container(
      //   width: Get.width * 0.5,
      //   height: heightBody * 0.3,
      //   color: Colors.amber,
      //   child: LayoutBuilder(
      //     builder: (context, constraints) {
      //       double lebarKuning = constraints.maxWidth;
      //       double tinggiKuning = constraints.maxHeight;
      //       return Stack(
      //         children: [
      //           Container(
      //             width: lebarKuning * 0.5,
      //             height: tinggiKuning * 0.5,
      //             color: Colors.red,
      //           )
      //         ],
      //       );
      //     },
      //   ),
      // ),

      // Wrap
      // body: Wrap(
      //   children: [
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       width: widhtDevice * 0.15,
      //       height: 40,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       width: widhtDevice * 0.15,
      //       height: 40,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       width: widhtDevice * 0.15,
      //       height: 40,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       width: widhtDevice * 0.15,
      //       height: 40,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       width: widhtDevice * 0.15,
      //       height: 40,
      //       color: Colors.amber,
      //     ),
      //   ],
      // )

      // FittedBox
      // body: Container(
      //   width: 200,
      //   height: 100,
      //   color: Colors.amber,
      //   child: Center(
      //     child: FittedBox(
      //       child: Text(
      //         "Halooooo",
      //         style: TextStyle(fontSize: 50),
      //       ),
      //     ),
      //   ),
      // )

      //Expanded
      // body: Column(
      //   children: [
      //     Row(
      //       children: [
      //         Expanded(
      //           child: ListTile(
      //             title: Text("data"),
      //             leading: Icon(Icons.abc),
      //             tileColor: Colors.amber,
      //           ),
      //         ),
      //         Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.red,
      //         )
      //       ],
      //     )
      //   ],
      // ),

      //Flexible dan Expanded
      // body: Column(
      //   children: [
      //     Container(
      //       height: heightBody * 0.5,
      //       width: widhtDevice * 0.5,
      //       color: Colors.amber,
      //     ),
      //     Flexible(
      //       flex: 2,
      //       child: Container(
      //         width: widhtDevice * 0.5,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: widhtDevice * 0.5,
      //         color: Colors.blueAccent,
      //       ),
      //     ),
      //   ],
      // ),

      // height body
      // body: Column(
      //   children: [
      //     Container(
      //       // margin: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      //       // height: heightDevice - paddingTop - paddingBottom,
      //       width: widhtDevice * 0.5,
      //       height: heightBody * 0.5,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: widhtDevice * 0.5,
      //       height: heightBody * 0.3,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: widhtDevice * 0.5,
      //       height: heightBody * 0.2,
      //       color: Colors.blueAccent,
      //     ),
      //   ],
      // ),
    );
  }
}
