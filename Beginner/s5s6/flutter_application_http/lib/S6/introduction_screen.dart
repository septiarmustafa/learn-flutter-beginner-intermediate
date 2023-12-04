import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: const Center(
            child: Icon(Icons.waving_hand, size: 50.0),
          ),
        ),
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: const Center(
            child: Icon(Icons.waving_hand, size: 50.0),
          ),
        ),
      ],
      showNextButton: true,
      next: Text("Next"),
      done: const Text("Done"),
      // onDone: () {
      //   Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => HomePage(),
      //       ));
      //   // On button pressed
      // },
    );
  }
}
