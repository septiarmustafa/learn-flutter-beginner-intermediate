import 'package:flutter/material.dart';

class Soal8 extends StatelessWidget {
  const Soal8({
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Text",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.amber,
            child: const Center(
              child: Text(
                "Text",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
