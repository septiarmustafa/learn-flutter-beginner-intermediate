import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as flutter_aplication_http;

class HomePageGet extends StatefulWidget {
  const HomePageGet({super.key});

  @override
  State<HomePageGet> createState() => _HomePageGetState();
}

class _HomePageGetState extends State<HomePageGet> {
  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    id = "";
    email = "";
    name = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP GET"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "ID : $id",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Email : $email",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Name : $name",
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () async {
              var myresponse = await flutter_aplication_http
                  .get(Uri.parse("https://reqres.in/api/users/2"));
              if (myresponse.statusCode == 200) {
                print("Berhasil Get Data");
                Map<String, dynamic> data =
                    json.decode(myresponse.body) as Map<String, dynamic>;
                print(data["data"]);
                setState(() {
                  id = data["data"]["email"].toString();
                  email = data["data"]["email"].toString();
                  name =
                      "${data['data']["first_name"]} ${data['data']['last_name']}";
                });
              }
            },
            child: Text("Get Data"),
          )
        ]),
      ),
    );
  }
}
