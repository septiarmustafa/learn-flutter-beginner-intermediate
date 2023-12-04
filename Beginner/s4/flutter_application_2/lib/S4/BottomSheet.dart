import 'package:flutter/material.dart';

class Bs extends StatelessWidget {
  const Bs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print("Klik Photo"),
                        leading: Icon(Icons.photo),
                        title: Text("Photo"),
                      ),
                      ListTile(
                        onTap: () => print("Klik Music"),
                        leading: Icon(Icons.music_note),
                        title: Text("Music"),
                      ),
                      ListTile(
                        onTap: () => print("Klik Share"),
                        leading: Icon(Icons.share),
                        title: Text("Share"),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.cancel),
                        title: Text("Cancel"),
                      )
                    ],
                  ),
                ),
              );
            },
            child: Text("Show Buttom Sheet")),
      )),
    );
  }
}
