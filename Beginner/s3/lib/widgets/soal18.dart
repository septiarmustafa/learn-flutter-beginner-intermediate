import 'package:flutter/material.dart';

class Soal18 extends StatelessWidget {
  const Soal18({
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
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("HELLO ${index + 1}")
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 10),
                    Text("HELLO ${index + 1}")
                  ],
                ),
              );
            }
          },
        ));
  }
}
