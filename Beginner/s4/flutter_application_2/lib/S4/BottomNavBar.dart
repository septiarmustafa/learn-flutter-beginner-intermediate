import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bnb(),
    );
  }
}

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

class _BnbState extends State<Bnb> {
  late int index;
  List showWidget = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Profile"),
    ),
    Center(
      child: Text("Cart"),
    ),
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          backgroundColor: Colors.blue,
          currentIndex: index,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Profile"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
          ]),
    );
  }
}
