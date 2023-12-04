import 'package:flutter/material.dart';

class Soal24 extends StatelessWidget {
  const Soal24({
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
        children: [
          Container(
            height: 120,
            color: Colors.red,
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 90,
                      width: 90,
                      color: Colors.blue[300]);
                } else {
                  return Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 90,
                      width: 90,
                      color: Colors.green[300]);
                }
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
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
            ),
          ),
        ],
      ),
    );
  }
}
