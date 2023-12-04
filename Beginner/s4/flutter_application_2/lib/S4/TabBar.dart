import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.teal,
          centerTitle: false,
          bottom: TabBar(
            controller: tabC,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(controller: tabC, children: [
          Center(child: Text("Camera")),
          Center(child: Text("Chats")),
          Center(child: Text("Status")),
          Center(child: Text("Calls")),
        ]),
      ),
    );
  }
}
