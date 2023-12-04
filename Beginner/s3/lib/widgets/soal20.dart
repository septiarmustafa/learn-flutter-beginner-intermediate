import 'package:flutter/material.dart';

class Soal20 extends StatelessWidget {
  const Soal20({
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
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 210,
            width: 210,
            color: Colors.green,
          ),
          Container(
            height: 190,
            width: 190,
            color: Colors.blue,
          ),
          Container(
            height: 160,
            width: 160,
            color: Colors.red,
          ),
          Container(
            height: 130,
            width: 130,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          )
        ]),
      ),
    );
  }
}
