import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  // const Increment({super.key});
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nilai.toString(),
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      nilai = nilai - 1;
                      print(nilai);
                      setState(() {});
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      nilai = nilai + 1;
                      print(nilai);
                      setState(() {});
                    },
                    child: Icon(Icons.add))
              ],
            )
          ],
        )),
      ),
    );
  }
}
