import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageDelete extends StatefulWidget {
  const HomePageDelete({super.key});

  @override
  State<HomePageDelete> createState() => _HomePageDeleteState();
}

class _HomePageDeleteState extends State<HomePageDelete> {
  String data = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HTTP Delete"),
          actions: [
            IconButton(
                onPressed: () async {
                  var deleteResponse = await http
                      .get(Uri.parse("https://reqres.in/api/users/2"));
                  Map<String, dynamic> body = json.decode(deleteResponse.body);
                  setState(() {
                    data =
                        "Nama : ${body['data']['first_name']} ${body['data']['last_name']}";
                  });
                },
                icon: Icon(Icons.get_app))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(data),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () async {
                var deleteResponse = await http
                    .delete(Uri.parse("https://reqres.in/api/users/2"));
                if (deleteResponse.statusCode == 204) {
                  setState(() {
                    data = "Berhasil hapus data";
                  });
                }
              },
              child: Text("Delete"),
            )
          ],
        ));
  }
}
