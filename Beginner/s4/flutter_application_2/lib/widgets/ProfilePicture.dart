import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.amber,
                ]),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Container(
          width: 112,
          height: 112,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/536/354")),
            border: Border.all(width: 3, color: Colors.white),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ],
    );
  }
}
