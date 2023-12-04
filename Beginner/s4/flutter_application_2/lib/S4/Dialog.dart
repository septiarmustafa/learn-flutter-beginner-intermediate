import 'package:flutter/material.dart';

class DialogClass extends StatelessWidget {
  const DialogClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    title: Text("Judul"),
                    content: const Text(
                        "Ini adalah deskripsi dialog, kamu bisa melihatnya disini"),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text("OK")),
                      ElevatedButton(onPressed: () {}, child: Text("CANCEL"))
                    ],
                  ),
                );
              },
              child: Text("KLIK")),
        ));
  }
}
