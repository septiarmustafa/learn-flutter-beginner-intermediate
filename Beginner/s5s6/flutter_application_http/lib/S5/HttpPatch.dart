import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePagePatch extends StatefulWidget {
  const HomePagePatch({super.key});

  @override
  State<HomePagePatch> createState() => _HomePagePostState();
}

class _HomePagePostState extends State<HomePagePatch> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page Post"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: jobC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Job",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                var postResponse = await http.patch(
                    Uri.parse("https://reqres.in/api/users/2"),
                    body: {"name": nameC.text, "job": jobC.text});

                Map<String, dynamic> data =
                    json.decode(postResponse.body) as Map<String, dynamic>;

                setState(() {
                  hasilResponse = " ${data['name']} - ${data['job']}";
                });
              },
              child: const Text("Submit")),
          const SizedBox(
            height: 20,
          ),
          Divider(),
          Text(hasilResponse),
        ],
      ),
    );
  }
}
