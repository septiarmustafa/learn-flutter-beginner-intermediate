import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();
  final LoginController LoginC = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberMe") != null) {
      LoginC.rememberMe.value = true;
      LoginC.emailC.text = box.read("dataRememberMe")["email"];
      LoginC.passwordC.text = box.read("dataRememberMe")["password"];
    }
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: LoginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => TextField(
              controller: LoginC.passwordC,
              autocorrect: false,
              obscureText: LoginC.isHidden.value,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () => LoginC.isHidden.toggle(),
                    icon: Icon(Icons.remove_red_eye)),
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: LoginC.rememberMe.value,
                onChanged: (value) {
                  LoginC.rememberMe.toggle();
                },
                title: Text("Remember me"),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => LoginC.login(),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
