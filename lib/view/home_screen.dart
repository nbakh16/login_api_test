import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_test/view/registration-form-screen.dart';

import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Home Page", style: (TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => RegistrationFormScreen());
              },
              style: ElevatedButton.styleFrom(
                  elevation: 4,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white
              ),
              child: const Text("Logout"),
            ),
          ],
        )
      )
    );
  }
}
