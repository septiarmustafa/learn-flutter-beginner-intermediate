import 'package:flutter/material.dart';

class SoalSnackBar extends StatelessWidget {
  // const SoalSnackar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Berhasil update data",
                  style: TextStyle(color: Colors.white),
                ),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    print("Tidak jadi ubah data");
                  },
                  textColor: Colors.red,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.green,
                duration: Duration(seconds: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ));
            },
            child: Text("Show SnakBar")),
      ),
    );
  }
}
