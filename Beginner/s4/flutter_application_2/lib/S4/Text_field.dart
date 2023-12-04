import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  // const HomePage({super.key});

  @override
  State<TextFieldWidget> createState() => TextFieldWidgetState();
}

class TextFieldWidgetState extends State<TextFieldWidget> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        TextField(
          controller: emailC,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.email)),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: passC,
          autocorrect: false,
          obscureText: isHidden,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              labelText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye))),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            print(
                "Login dengan email (${emailC.text}) dan password (${passC.text})");
          },
          child: Text("LOGIN"),
          style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        )
      ]),
    );
  }
}
