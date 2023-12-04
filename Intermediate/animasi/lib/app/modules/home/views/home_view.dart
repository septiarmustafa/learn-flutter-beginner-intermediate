import 'dart:math';

import 'package:animasi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // Decorated box transition
  // DecorationTween myDecoration = DecorationTween(
  //   begin: BoxDecoration(
  //       color: Colors.amber, borderRadius: BorderRadius.circular(50)),
  //   end: BoxDecoration(
  //       color: Colors.blue, borderRadius: BorderRadius.circular(50)),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
            child: GestureDetector(
          onTap: () => Get.toNamed(Routes.PROFILE),
          child: Hero(
            tag: "tag1",
            child: ClipOval(
              child: Container(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    "https://picsum.photos/id/237/200/300",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        )));

    //Lottie
    // body: Center(
    //     child: Container(
    //         width: 300,
    //         height: 300,
    //         child: Lottie.network(
    //           "https://assets1.lottiefiles.com/packages/lf20_UW8DlCRljO.json",
    //           fit: BoxFit.cover,
    //         ))));

    //Avatar Glow
    // body: Center(
    //     child: AvatarGlow(
    //   endRadius: 150,
    //   glowColor: Colors.red,
    //   child: ClipOval(
    //       child: Container(
    //           width: 150,
    //           height: 150,
    //           child: Image.network(
    //             "https://picsum.photos/500/500",
    //             fit: BoxFit.cover,
    //           ))),
    // )));

    // Fade Transition
    // body: Center(
    //   child: FadeTransition(
    //     opacity: CurvedAnimation(
    //         parent: controller.animationC, curve: Curves.easeInOut),
    //     child: Container(
    //       color: Colors.purple,
    //       width: 300,
    //       height: 300,
    //     ),
    //   ),
    // ));

    // Decorated Box Transition
    // body: Center(
    //   child: DecoratedBoxTransition(
    //     decoration: myDecoration.animate(controller.animationC),
    //     child: Container(
    //       width: 300,
    //       height: 300,
    //     ),
    //   ),
    // ));
  }
}

// ignore: must_be_immutable

// Animated Widget

//  body: Center(
//           child: MyWidget(myC: controller.animationC),
//         )

// ignore: must_be_immutable
class MyWidget extends AnimatedWidget {
  MyWidget({Key? key, required this.myC}) : super(key: key, listenable: myC);
  AnimationController myC;

  get progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: progress.value * 2 * pi,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.amber,
      ),
    );
  }
}


        //Animated Builder
        // body: Center(
        //   child: Container(
        //     width: 300,
        //     height: 500,
        //     color: Colors.amber,
        //     child: Stack(
        //       children: [
        //         AnimatedBuilder(
        //           animation: controller.animationC,
        //           builder: (context, Widget) {
        //             return Positioned(
        //               top: 0,
        //               left: 2 *
        //                   (0.5 - (0.5 - controller.animationC.value).abs()) *
        //                   250,
        //               child: Widget!,
        //             );
        //           },
        //           child: Container(
        //             height: 50,
        //             width: 50,
        //             color: Colors.blue,
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // )

        //Animated Positioned

        // Opacity animated
        // body: Center(
        //   child: GestureDetector(
        //     onTap: () => controller.selectedContainer.toggle(),
        //     child: Obx(() => AnimatedOpacity(
        //           duration: Duration(seconds: 1),
        //           opacity: controller.selectedContainer.isFalse ? 1 : 0,
        //           child: Container(
        //             color: Colors.amber,
        //             height: 150,
        //             width: 150,
        //           ),
        //         )),
        //   ),
        // )

        // CROSS FADE
        // body: Center(
        //   child: GestureDetector(
        //     onTap: () => controller.selectedContainer.toggle(),
        //     child: Obx(
        //       () => AnimatedCrossFade(
        //         firstChild: Container(
        //           color: Colors.amber,
        //           height: 200,
        //           width: 200,
        //         ),
        //         secondChild: FlutterLogo(
        //           size: 200,
        //         ),
        //         crossFadeState: controller.selectedContainer.isFalse
        //             ? CrossFadeState.showFirst
        //             : CrossFadeState.showSecond,
        //         duration: Duration(seconds: 1),
        //       ),
        //     ),
        //   ),
        // )

        // Kombinasi Animated Align dan Container
        // body: Center(
        //   child: GestureDetector(
        //     onTap: () => controller.selectedContainer.toggle(),
        //     child: Obx(() => AnimatedContainer(
        //           duration: Duration(seconds: 2),
        //           height: controller.selectedContainer.isFalse ? 200 : 250,
        //           width: controller.selectedContainer.isFalse ? 200 : 100,
        //           color: controller.selectedContainer.isFalse
        //               ? Colors.amber
        //               : Colors.red,
        //           child: AnimatedAlign(
        //             duration: Duration(seconds: 2),
        //             curve: Curves.bounceIn,
        //             alignment: controller.selectedContainer.isFalse
        //                 ? Alignment.center
        //                 : Alignment.topCenter,
        //             child: Text("Halo"),
        //           ),
        //         )),
        //   ),
        // )

        // Animated Align
        // body: Center(
        //   child: GestureDetector(
        //     onTap: () => controller.selectedContainer.toggle(),
        //     child: Obx(() => Container(
        //           height: 200,
        //           width: 200,
        //           color: Colors.amber,
        //           child: AnimatedAlign(
        //             duration: Duration(seconds: 2),
        //             curve: Curves.bounceIn,
        //             alignment: controller.selectedContainer.isFalse
        //                 ? Alignment.center
        //                 : Alignment.topCenter,
        //             child: Text("Halo"),
        //           ),
        //         )),
        //   ),
        // )

        //Animated Container
        // body: Center(
        //     child: GestureDetector(
        //   onTap: () => controller.selectedContainer.toggle(),
        //   child: Obx(
        //     () => AnimatedContainer(
        //       duration: Duration(seconds: 2),
        //       curve: Curves.easeIn,
        //       height: controller.selectedContainer.isFalse ? 200 : 350,
        //       width: controller.selectedContainer.isFalse ? 200 : 300,
        //       color: Colors.amber,
        //     ),
        //   ),
        // )),
