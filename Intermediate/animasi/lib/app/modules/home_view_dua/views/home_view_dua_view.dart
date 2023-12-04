import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_view_dua_controller.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomeViewDuaView extends GetView<HomeViewDuaController> {
  //clipoval
  //cliprect
  //clip RRect
  //Clip path
  const HomeViewDuaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home View'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                onPageChanged: (index, reason) =>
                    controller.index.value = index,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          controller.carouselC.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                                .withOpacity(
                                    controller.index == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ))
          ],
        ));
  }
}
//       body: Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           color: Colors.grey[300],
//           child: CustomPaint(
//             painter: myPainter(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class myPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint myPaint = Paint()
//       ..color = Colors.red
//       ..strokeWidth = 5
//       ..strokeCap = StrokeCap.round;
//     canvas.drawLine(
//         Offset(
//           0,
//           0,
//         ),
//         Offset(0, size.height),
//         myPaint);

//     canvas.drawLine(
//         Offset(
//           0,
//           size.width,
//         ),
//         Offset(size.width / 2, size.height / 2),
//         myPaint);

//     canvas.drawLine(Offset(size.width / 2, size.height / 2),
//         Offset(size.width, size.height), myPaint);

//     canvas.drawLine(
//         Offset(size.width, size.height), Offset(size.width, 0), myPaint);
//     canvas.drawLine(Offset(size.width, 0), Offset(0, 0), myPaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     return false;
//   }
// }

    //Backdrrop Filter
    // body: Stack(
    //   children: [
    //     Container(
    //       height: 300,
    //       width: 300,
    //       color: Colors.grey[300],
    //       child: FlutterLogo(),
    //     ),
    //     BackdropFilter(
    //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    //       child: Container(),
    //     )
    //   ],
    // ));
    // body: ClipPath(
    //   clipper: myClipper(),
    //   child: Container(
    //     height: 300,
    //     width: 300,
    //     color: Colors.grey[300],
    //     child: FlutterLogo(),
    //   ),
    // ));

// class myClipper extends CustomClipper<Path> {
//   @override  
//   Path getClip(Size size) {
//     var controlPoint = Offset(size.width / 2, size.height / 2);
//     var endPoint = Offset(size.width, size.height);
//     Path path = Path()
//       ..moveTo(size.width / 2, 0)
//       ..lineTo(0, size.height)
//       ..quadraticBezierTo(
//           controlPoint.dx, controlPoint.dx, endPoint.dx, endPoint.dy)
//       ..close();
//     // ..lineTo(size.width * 0.5, 0)
//     // ..lineTo(size.width, 0);

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
