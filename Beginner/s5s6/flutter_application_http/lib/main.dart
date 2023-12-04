import 'package:flutter/material.dart';
import 'package:flutter_application_http/S6/dropdown_search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropdownSearchPackages(),
    );
  }
}
