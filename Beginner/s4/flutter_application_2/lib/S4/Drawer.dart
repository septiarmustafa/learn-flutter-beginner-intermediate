import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Drw(),
    );
  }
}

class Drw extends StatelessWidget {
  const Drw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drwawer"),
      ),
      drawer: Drawer(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            color: Colors.blue,
            child: Text("Dashboard Menu",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () => print("Home"),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
