import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class IntlLatihan extends StatelessWidget {
  var faker = new Faker();
  String tanggal = DateTime.now().toIso8601String();

  IntlLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faker"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage(
                  "https://picsum.photos/id/${870 + index}/200/300")),
          title: Text("${faker.person.name()}"),
          subtitle: Text(
              "${DateFormat.yMMMMd().add_Hm().format(DateTime.parse(tanggal))}"),
        ),
      ),
    );
  }
}
