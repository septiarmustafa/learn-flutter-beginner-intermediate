import 'package:flutter/material.dart';

class HighlightStory extends StatelessWidget {
  const HighlightStory({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    border: Border.all(width: 3, color: Colors.white),
                    image: const DecorationImage(
                        image: NetworkImage("https://picsum.photos/536/354"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
