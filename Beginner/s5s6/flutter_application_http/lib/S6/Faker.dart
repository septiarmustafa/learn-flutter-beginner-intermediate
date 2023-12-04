import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FakerLatihan extends StatelessWidget {
  var faker = new Faker();

  FakerLatihan({super.key});
  // const FakerLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faker"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage(
                  "https://picsum.photos/id/${870 + index}/200/300")),
          title: Text("${faker.person.name()}"),
          subtitle: Text("${faker.internet.email()}"),
        ),
      ),
    );
  }
}
