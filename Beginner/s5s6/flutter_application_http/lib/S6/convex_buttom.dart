import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

// ignore: must_be_immutable
class ConvexBar extends StatefulWidget {
  @override
  State<ConvexBar> createState() => _ConvexBarState();
}

class _ConvexBarState extends State<ConvexBar> {
  var faker = new Faker();

  String tanggal = DateTime.now().toIso8601String();

  int currentIndex = 0;

  // IntlLatihan({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      ListView.builder(
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
      Center(
        child: Text("Menu ke 2"),
      ),
      Center(
        child: Text("Menu ke 3"),
      ),
      Center(
        child: Text("Menu ke 4"),
      ),
      Center(
        child: Text("Menu ke 5"),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Faker"),
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.red,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
