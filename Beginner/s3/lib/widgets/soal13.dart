import 'package:flutter/material.dart';

class Soal13 extends StatelessWidget {
  const Soal13({
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(2),
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
              Container(
                margin: EdgeInsets.all(2),
                width: 150,
                height: 150,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Text",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(2),
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
              Container(
                margin: EdgeInsets.all(2),
                width: 150,
                height: 150,
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    "Text",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
