import 'package:flutter/material.dart';

class Soal21 extends StatelessWidget {
  const Soal21({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 270,
                    height: 270,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://picsum.photos/536/354")),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(250 / 2)),
                  width: 250,
                  height: 250,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hello World",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
    );
  }
}
