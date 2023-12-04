import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.active, required this.icon});

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white,
              width: 0.5,
            ))),
            child: Icon(icon)));
  }
}
