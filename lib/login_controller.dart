import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final userId = ''.obs;
  final password = ''.obs;

  void fetchAuthData() async {

  }
}


class Prefs extends GetxController {
  Future<void> initStorage() async {
    await GetStorage.init();
  }

  final token = ''.val('token');
  final empId = ''.val('emp_id');
}