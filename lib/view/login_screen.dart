import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_test/view/registration-form-screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key,});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final baseUrl = "http://103.96.106.250:1065/";

  var userIdTxtController = TextEditingController();
  var passwordTxtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
              const SizedBox(height: 22,),
              TextFormField(
                controller: userIdTxtController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "User ID",
                  labelText: "User ID",
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "empty";
                  }
                  else {
                    return null;
                  }
                },
                onSaved: (value){

                },
              ),
              const SizedBox(height: 12,),
              TextFormField(
                controller: passwordTxtController,
                // obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.key),
                  hintText: "Password",
                  labelText: "Password",
                ),
                onSaved: (value){

                },
              ),
              const SizedBox(height: 22,),
              ElevatedButton(
                onPressed: () {
                  login();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white
                ),
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    final loginUrl = "${baseUrl!}apibdbl/Auth/loginBDBL";
    var response = await http.post(Uri.parse(loginUrl),
        headers: {
          'Content-Type': 'application/json',
          'charset': 'utf-8',
        },
        body: jsonEncode({
          'ID': userIdTxtController.text.toString(),
          'password': passwordTxtController.text.toString()
        }));

    if(response.statusCode == 200) {

      if (!_formKey.currentState!.validate()) {
        return;
      }
      // _formKey.currentState!.save();
      Get.offAll(() => RegistrationFormScreen());
    }
    else {
      print("response: ${response.statusCode}");
      throw const HttpException("ERROR");
    }
  }

}