import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  // const Dropdown({super.key});
  final List data = [
    {"judul": "Pilihan 1", "data": "1"},
    {"judul": "Pilihan 2", "data": "2"},
    {"judul": "Pilihan 3", "data": "3"},
    {"judul": "Pilihan 4", "data": "4"},
  ];

  late String dataAwal;

  @override
  void initState() {
    dataAwal = data[2]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dropdown"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: DropdownButton(
              value: dataAwal,
              items: data
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text("${e["judul"]}"),
                      value: "${e["data"].toString()}",
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  dataAwal = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
