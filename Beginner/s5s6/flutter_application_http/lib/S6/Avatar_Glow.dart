import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class AvatarG extends StatelessWidget {
  const AvatarG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Avatar Glow")),
      body: Center(
        child: AvatarGlow(
          endRadius: 100.0,
          glowColor: Colors.blue,
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage: NetworkImage("https://picsum.photos/200"),
              radius: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
