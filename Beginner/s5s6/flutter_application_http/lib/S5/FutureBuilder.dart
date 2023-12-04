import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_http/models/user.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class FutureB extends StatelessWidget {
  // const FutureB({super.key});

  List<UserModel> allUsers = [];

  Future getAllUsers() async {
    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users"));
      List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((element) {
        allUsers.add(UserModel(
            avatar: element['avatar'],
            name: "${element['first_name']} ${['last_name']}",
            email: element['email']));
      });

      print(allUsers);
    } catch (e) {
      print("Terjadi Kesalahan");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body: FutureBuilder(
          future: getAllUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("Loading"),
              );
            } else {
              return ListView.builder(
                itemCount: allUsers.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage(allUsers[index].avatar),
                  ),
                  title: Text("${allUsers[index].name}"),
                  subtitle: Text("${allUsers[index].email}"),
                ),
              );
            }
          }),
    );
  }
}
