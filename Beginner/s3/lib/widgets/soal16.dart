import 'package:flutter/material.dart';

class Soal16 extends StatelessWidget {
  const Soal16({
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
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(height: 20),
            Container(
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
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Text",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  "Text",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.pink,
              child: const Center(
                child: Text(
                  "Text",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  "Text",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
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
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
              child: const Center(
                child: Text(
                  "Text",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
