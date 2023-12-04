import 'package:flutter/material.dart';
import 'dart:math';

class Soal4 extends StatelessWidget {
  const Soal4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        leading: FlutterLogo(size: 20),
        title: Text("Text Judul"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                print("klik More");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: Transform.rotate(
          angle: pi,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
