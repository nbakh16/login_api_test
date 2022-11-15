import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class RegistrationFormScreen extends StatelessWidget {
  RegistrationFormScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void register() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    // _formKey.currentState!.save();
    Get.offAll(() => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""), backgroundColor: Colors.white,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("User Registration",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),),
                Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("User ID"),
                                  prefixIcon: Icon(Icons.credit_card),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                                // validator: validatorEmptyCheck,
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("User Name"),
                                  prefixIcon: Icon(Icons.person),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("User Email"),
                                  prefixIcon: Icon(Icons.mail),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("User Mobile"),
                                  prefixIcon: Icon(Icons.call),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  label: Text("Password"),
                                  prefixIcon: Icon(Icons.key),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  label: Text("Confirm Password"),
                                  prefixIcon: Icon(Icons.key),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.indigo,
                                      )
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      )
                                  ),
                                ),
                              ),
                              const SizedBox(height: 22,),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    register();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(200, 50),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
                                      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                      backgroundColor: Colors.indigo,
                                      foregroundColor: Colors.white
                                  ),
                                  child: const Text("Register"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 33,),
                    Center(
                      child: GestureDetector(
                          onTap: (){
                            Get.offAll(() => const LoginScreen());
                          },
                          child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(text: "Already got account? "),
                                    TextSpan(
                                        text: "Login",
                                        style: TextStyle(color: Colors.indigo)
                                    )
                                  ]
                              )
                          )
                      ),
                    )
                  ]
                )

              ],
            ),
          ),

        ),
      ),
    );
  }

  String? validatorEmptyCheck(value){
    if(value!.isEmpty){
      return "This field is required!";
    }
    else {
      return null;
    }
  }
}

