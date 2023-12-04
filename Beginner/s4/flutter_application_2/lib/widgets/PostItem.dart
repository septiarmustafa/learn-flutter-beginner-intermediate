import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  PostItem({required this.value, required this.title});

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(title),
      ],
    );
  }
}
