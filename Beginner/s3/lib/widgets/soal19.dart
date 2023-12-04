import 'package:flutter/material.dart';

class Soal19 extends StatelessWidget {
  const Soal19({
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
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://picsum.photos/id/${778 + index}/200/300"))),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  child: Text(
                    "HELLO ${index + 1}",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )),
            );
          },
        ));
  }
}
