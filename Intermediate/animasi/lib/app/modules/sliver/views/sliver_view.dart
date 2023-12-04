import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sliver_controller.dart';

class myDelegateClass extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // widget yang akan di build
    return Container(
      color: Colors.amber,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 200;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class SliverView extends GetView<SliverController> {
  const SliverView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('SliverView'),
        //   centerTitle: true,
        //   flexibleSpace: Center(
        //     child: FlutterLogo(size: 100),
        //   ),
        // ),
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )
            ],
          ),
        ),
        SliverAppBar(
          // pinned: true,
          floating: true,
          snap: true,
          expandedHeight: 300,
          title: Text("Home View"),
          flexibleSpace: Center(
            child: FlutterLogo(size: 100),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          children: List.generate(
            12,
            (index) => Container(
              color: Color.fromARGB(255, Random().nextInt(256),
                  Random().nextInt(256), Random().nextInt(256)),
            ),
          ),
        ),
        SliverPersistentHeader(
          pinned: true,
          delegate: myDelegateClass(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Container(
                height: 200,
                width: 200,
                color: Color.fromARGB(255, Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256)),
                child: Center(
                  child: Text(
                    "Halo ${index + 1}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
          // delegate: SliverChildListDelegate(
          //   [
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.red,
          //       child: Center(
          //         child: Text(
          //           "Halo 1",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.blue,
          //       child: Center(
          //         child: Text(
          //           "Halo 2",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.amber,
          //       child: Center(
          //         child: Text(
          //           "Halo 3",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.red,
          //       child: Center(
          //         child: Text(
          //           "Halo 1",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.blue,
          //       child: Center(
          //         child: Text(
          //           "Halo 2",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.amber,
          //       child: Center(
          //         child: Text(
          //           "Halo 3",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ],
    ));
  }
}
